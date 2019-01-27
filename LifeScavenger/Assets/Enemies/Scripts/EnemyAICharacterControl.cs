using System;
using UnityEngine;
using Unity.Collections;

namespace Enemy.ThirdPerson
{
    [RequireComponent(typeof(UnityEngine.AI.NavMeshAgent))]
    [RequireComponent(typeof(EnemyThirdPersonCharacter))]
    public class EnemyAICharacterControl : MonoBehaviour
    {
        public UnityEngine.AI.NavMeshAgent agent { get; private set; }             // the navmesh agent required for the path finding
        public EnemyThirdPersonCharacter character { get; private set; } // the character we are controlling
        GameObject target;                                    // target to aim for
        public GameObject alertZone;
        Vector3 spawnPoint;

        private void Start()
        {
            // get the components on the object we need ( should not be null due to require component so no need to check )
            agent = GetComponentInChildren<UnityEngine.AI.NavMeshAgent>();
            character = GetComponent<EnemyThirdPersonCharacter>();


            agent.updateRotation = false;
            agent.updatePosition = true;

            alertZone = Instantiate(alertZone) as GameObject;
            alertZone.transform.position = transform.position;
            spawnPoint = transform.position;
            alertZone.GetComponent<AlertZoneScript>().Enemy = this as MonoBehaviour;


        }
        private void Update()
        {
            if (target != null)
                agent.SetDestination(target.transform.position);
            else
            {
                agent.SetDestination(spawnPoint);
            }

            if (agent.remainingDistance > agent.stoppingDistance)
                character.Move(agent.desiredVelocity, false, false);
            else
                character.Move(Vector3.zero, false, false);
        }


        public void SetTarget(Collider target)
        {
            this.target = target.gameObject;
        }
        public void RemoveTarget()
        {
            this.target = null;
        }
    }
        
}
