lbl_804EE050:
/* 804EE050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE054  7C 08 02 A6 */	mflr r0
/* 804EE058  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE060  7C 7F 1B 78 */	mr r31, r3
/* 804EE064  4B FE 94 79 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EE068  2C 03 00 00 */	cmpwi r3, 0
/* 804EE06C  40 82 00 0C */	bne lbl_804EE078
/* 804EE070  7F E3 FB 78 */	mr r3, r31
/* 804EE074  4B FF FD 21 */	bl Player_actor_Set_Item_Pickup_jump
lbl_804EE078:
/* 804EE078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE07C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE080  7C 08 03 A6 */	mtlr r0
/* 804EE084  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE088  4E 80 00 20 */	blr 
