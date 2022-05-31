lbl_8042DC64:
/* 8042DC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042DC68  7C 08 02 A6 */	mflr r0
/* 8042DC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042DC70  80 63 01 9C */	lwz r3, 0x19c(r3)
/* 8042DC74  4B F5 F2 81 */	bl mCoBG_CrossOffMoveBg
/* 8042DC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DC7C  7C 08 03 A6 */	mtlr r0
/* 8042DC80  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DC84  4E 80 00 20 */	blr 
