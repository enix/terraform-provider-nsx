package main

import (
	"fmt"

	"github.com/hashicorp/terraform-plugin-sdk/helper/schema"
	"github.com/sky-uk/gonsx"
	"github.com/sky-uk/gonsx/api/service"
)

func dataSourceService() *schema.Resource {
	return &schema.Resource{
		Read: dataSourceServiceRead,

		Schema: map[string]*schema.Schema{
			"name": {
				Type:     schema.TypeString,
				Required: true,
			},
			"scopeid": {
				Type:     schema.TypeString,
				Optional: true,
				Default:  "globalroot-0",
			},
		},
	}
}

func dataSourceServiceRead(data *schema.ResourceData, meta interface{}) error {
	nsxclient := meta.(*gonsx.NSXClient)
	getAllAPI := service.NewGetAll(data.Get("scopeid").(string))

	err := nsxclient.Do(getAllAPI)
	if err != nil {
		return err
	}

	name := data.Get("name").(string)
	if getAllAPI.StatusCode() != 200 {
		return fmt.Errorf("Failed to lookup service %s: unexpected HTTP status %d", name, getAllAPI.StatusCode())
	}

	for _, application := range getAllAPI.GetResponse().Applications {
		if application.Name == name {
			data.SetId(application.ObjectID)
			return nil
		}
	}

	return fmt.Errorf("Service %s not found", name)
}
