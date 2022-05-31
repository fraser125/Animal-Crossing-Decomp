lbl_8042B638:
/* 8042B638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B63C  7C 08 02 A6 */	mflr r0
/* 8042B640  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B644  80 63 01 94 */	lwz r3, 0x194(r3)
/* 8042B648  4B F6 18 AD */	bl mCoBG_CrossOffMoveBg
/* 8042B64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B650  7C 08 03 A6 */	mtlr r0
/* 8042B654  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B658  4E 80 00 20 */	blr 
