using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NPCFollow : MonoBehaviour
{
    GameObject thePlayer;
    public float targetDistance;
    public float allowedDistance=2;

    NavMeshAgent agent;

    bool followingPlayer = false;
    bool atHome = false;
    bool atRestPoint = false;

    public Transform housePosition;

    public string healthBarName;
    GameObject healthbar;

    int health = 100;

    Vector3 initialPosition;

    // Start is called before the first frame update
    void Start()
    {
        thePlayer = GameObject.FindWithTag("Player");
        agent = transform.GetComponent<NavMeshAgent>();
        healthbar = GameObject.Find(healthBarName);
        healthbar.SetActive(false);
        initialPosition = this.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        healthbar.transform.position = Camera.main.WorldToScreenPoint(this.transform.position + new Vector3(0,1.1f,0));
        // testing
        if (Input.GetKey(KeyCode.I) && healthBarName == "Bar_Girl")
        {
            takeDamage();
        }

        // if player approached NPC
        if (followingPlayer)
        {
            transform.LookAt(thePlayer.transform);
            targetDistance = Vector3.Distance(transform.position, thePlayer.transform.position);
            if (targetDistance >= allowedDistance) // stops at a certain distance from player
            {
                // starts moving towards player
                agent.isStopped = false;
                agent.SetDestination(thePlayer.transform.position);

                if (targetDistance >= 3) // starts running
                {
                    Debug.Log("isRunning");
                    transform.GetComponent<Animator>().SetInteger("state", 2);
                    agent.speed = 3;
                }
                else
                { // walks 
                    transform.GetComponent<Animator>().SetInteger("state", 1);
                    agent.speed = 2;
                }
            }
            else
            {
                //Debug.Log("distance from player: " + targetDistance + " allowed distance: " + allowedDistance);
                transform.GetComponent<Animator>().SetInteger("state", 0);
                agent.isStopped = true;
            }
        }
        else if (atHome) // inside safe space
        {
            if (atRestPoint) // resting
            {
                transform.LookAt(thePlayer.transform);
            }
            else { // walking
                transform.LookAt(agent.destination);
                checkIfArrived(); // check if its arrived at destination
            }     
        }
        else { // in the wild, waiting to be picked up
            transform.LookAt(thePlayer.transform);
        }

    }

    // changes destination to home position
    public void setDestination(Transform destination) {
        Debug.Log("moving to rest position");
        atHome = true;
        followingPlayer = false;
        agent.SetDestination(destination.position);
    }

    private void checkIfArrived() {
        // Check if we've reached the destination
        if (!agent.pathPending)
        {
            if (agent.remainingDistance <= agent.stoppingDistance)
            {
                if (!agent.hasPath || agent.velocity.sqrMagnitude == 0f)
                {
                    transform.GetComponent<Animator>().SetInteger("state", 0);
                    transform.LookAt(thePlayer.transform);
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (!atHome) // not a home, starts following the player
            {
                followingPlayer = true;
                other.gameObject.GetComponent<NPCPickup>().addFollower(this.gameObject);
                transform.GetComponent<Light>().enabled = false;
            }
        }
        else if (other.gameObject.tag == "Ennemies")
        {
            takeDamage();
        }

    }

    private void takeDamage() {
        if (health <= 0) // die & respawn at initial position
        {
            healthbar.SetActive(false);
            health = 100;
            Die();       
        }
        else {
            healthbar.SetActive(true);
            StartCoroutine(LateCall());
            health -= 150;
        }      
        healthbar.transform.GetChild(0).GetComponent<SimpleHealthBar>().UpdateBar(health, 100);

    }

    private void Die() {
        //Debug.Log("Current position: " + transform.position.x + " " + transform.position.y + " " + transform.position.z + "  " + healthBarName);
        //Debug.Log("initial position:" + initialPosition.position.x + " " + initialPosition.position.y + " " + initialPosition.position.z + healthBarName);

        Time.timeScale = 1;
        // stops moving
        agent.isStopped = true; 
        // reset values
        followingPlayer = false;
        atHome = false;
        atRestPoint = false;
        // Play death animation
        transform.GetComponent<Animator>().SetInteger("state", 3);
        StartCoroutine(DieAnimation());    
    }

    IEnumerator LateCall()
    {
        yield return new WaitForSeconds(2);
        healthbar.SetActive(false);
    }

    IEnumerator DieAnimation()
    {
        yield return new WaitForSeconds(2);
        transform.GetComponent<Animator>().SetInteger("state", 0); // return to idle state
        this.transform.position = initialPosition; // return to spawn position   
        transform.GetComponent<Light>().enabled = true; // turn light on 
    }

}

//transform.LookAt(thePlayer.transform);

//        if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out shot))
//        {
//            targetDistance = shot.distance;
//            if (targetDistance >= allowedDistance)
//            {
//                followSpeed = 0.02f;
//                //theNPC.GetComponent<Animator>()
//                transform.position = Vector3.MoveTowards(transform.position, thePlayer.transform.position, followSpeed);
//            }
//            else {
//                followSpeed = 0;
//                //theNPC.GetComponent<Animation>
//            }
//        }


// Bit shift the index of the layer (8) to get a bit mask
//int layerMask = 1 << 12;
//layerMask = ~layerMask;

//if (Physics.Raycast(transform.position,transform.TransformDirection(Vector3.forward), out shot, Mathf.Infinity))
//{
//    targetDistance = shot.distance;
//    if (targetDistance >= allowedDistance)
//    {
//        Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * shot.distance, Color.yellow);
//        transform.GetComponent<Animator>().SetInteger("state", 1);
//        agent.isStopped = false;
//        agent.SetDestination(thePlayer.transform.position);
//    }
//    else {
//        Debug.Log("distance from player: " + targetDistance + " allowed distance: " + allowedDistance);
//        Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * 1000, Color.white);
//        transform.GetComponent<Animator>().SetInteger("state", 0);
//        agent.isStopped = true;
//    }
//}