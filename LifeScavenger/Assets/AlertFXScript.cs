using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlertFXScript : MonoBehaviour
{
    void Awake()
    {
        gameObject.SetActive(false);
    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnActive()
    {
        gameObject.SetActive(true);
        Invoke("OnDeactive", 1);
    }
    public void OnDeactive()
    {
        gameObject.SetActive(false);
    }
}
