using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaitFxScript : MonoBehaviour
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
        Invoke("OnDeactive", 3);
    }
    public void OnDeactive()
    {
        gameObject.SetActive(false);
    }
}
