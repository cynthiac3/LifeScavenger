using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyNotice_SC : MonoBehaviour
{

    public GameObject alertEffect;
    public GameObject idleEffect;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void OnTriggerEnter()
    {
        if (tag == "Player")
        {
            //Destroy(idleEffect)
            //Instantiate(alertEffect
        }

    }

    public void OnTriggerExit()
    {
        if (tag == "Player")
        {
           // Destroy(alertEffect)
            //Instantiate(alertEffect
        }

    }
}
