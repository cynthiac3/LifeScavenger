using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NPCFollow : MonoBehaviour
{
    GameObject thePlayer;
    public float targetDistance;
    public float allowedDistance=2;

    public RaycastHit shot;

    NavMeshAgent agent;

    bool followingPlayer = false;

    public Transform housePosition;

    // Start is called before the first frame update
    void Start()
    {
        thePlayer = GameObject.FindWithTag("Player");
        agent = transform.GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        transform.LookAt(thePlayer.transform);

        // if player approached NPC
        if (followingPlayer)
        {
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
                    agent.speed = 2;
                }
                else { // walks 
                    transform.GetComponent<Animator>().SetInteger("state", 1);
                    agent.speed = 1;
                }
            }
            else
            {
                //Debug.Log("distance from player: " + targetDistance + " allowed distance: " + allowedDistance);
                transform.GetComponent<Animator>().SetInteger("state", 0);
                agent.isStopped = true;
            }
        }

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player") {
            Debug.Log("Following player");
            followingPlayer = true;
            other.gameObject.GetComponent<NPCPickup>().addFollower(this.gameObject);
        }
    }

    public void setDestination(Transform destination) {
        Debug.Log("moving to rest position");
        followingPlayer = false;
        agent.SetDestination(destination.position);
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