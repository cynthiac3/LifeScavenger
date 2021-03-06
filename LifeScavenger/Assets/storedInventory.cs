﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class storedInventory
{
    private string name;
    private bool isCaptured;
    private GameObject visualComponent;

    public storedInventory(string objectName) {
        name = objectName;
        isCaptured = false;
        visualComponent = GameObject.Find(objectName);
    }

    public void captureItem() {
        isCaptured = true;
    }

    public bool getCapture(){ return isCaptured; }
    public string getName(){ return name; }

    public GameObject getVisualComponent() { return visualComponent; }
    public Transform getTransformObject() { return visualComponent.transform; }
}
