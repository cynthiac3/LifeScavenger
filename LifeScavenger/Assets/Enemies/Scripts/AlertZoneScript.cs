using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy.ThirdPerson;

public class AlertZoneScript : MonoBehaviour
{
    public MonoBehaviour Enemy;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
    void OnTriggerEnter(Collider c)
    {
        if(c.tag == "Player")
        {
            Debug.Log("OnTriggerEnter()");
            Enemy.GetComponent<EnemyAICharacterControl>().SetTarget(c);
        }
    }
    void OnTriggerExit(Collider c)
    {
        if (c.tag == "Player")
        {
            Debug.Log("OnTriggerExit()");
            Enemy.GetComponent<EnemyAICharacterControl>().RemoveTarget();
        }
           
    }

}
