using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CreditsMove : MonoBehaviour
{
    GameObject credits;

    bool crawling = true;

    public float speed;

    bool onScreen = false;

    float time;
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //if (!crawling)
        //    return;

        transform.Translate(Vector3.up * Time.deltaTime * speed);

        time += Time.deltaTime;

        if (time >= 20) {
            SceneManager.LoadScene(0);
        }

        if (Input.GetKey(KeyCode.Space)) {
            SceneManager.LoadScene(0);
        }

        //if (gameObject.transform.position.y > .8)
        //{
        //    crawling = false;
        //}
        //Vector3 screenPoint = Camera.main.WorldToViewportPoint(transform.position);
        //onScreen = screenPoint.x > 0 && screenPoint.x < 1 && screenPoint.y > 0 && screenPoint.y < 1;
        //if (!onScreen) {
        //    SceneManager.LoadScene(0);
        //}
    }
}
