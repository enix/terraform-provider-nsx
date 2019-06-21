package main

import (
	"github.com/hashicorp/terraform/helper/schema"
)

func getListOfStructs(v interface{}) []map[string]interface{} {
	if vvSet, ok := v.(*schema.Set); ok {
		v = vvSet.List()
	}
	vvv := []map[string]interface{}{}
	for _, vv := range v.([]interface{}) {
		vvv = append(vvv, vv.(map[string]interface{}))
	}
	return vvv
}
