lbl_804EE4E0:
/* 804EE4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE4E4  7C 08 02 A6 */	mflr r0
/* 804EE4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE4F0  7C 7F 1B 78 */	mr r31, r3
/* 804EE4F4  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804EE4F8  4B FF FE F1 */	bl Player_actor_Movement_Pickup_furniture_common
/* 804EE4FC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804EE500  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EE504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE50C  7C 08 03 A6 */	mtlr r0
/* 804EE510  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE514  4E 80 00 20 */	blr 
