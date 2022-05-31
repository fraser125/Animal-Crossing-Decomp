lbl_80503A40:
/* 80503A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503A44  7C 08 02 A6 */	mflr r0
/* 80503A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503A4C  4B FD 2B 3D */	bl Player_actor_CulcAnimation_Base2
/* 80503A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503A54  7C 08 03 A6 */	mtlr r0
/* 80503A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80503A5C  4E 80 00 20 */	blr 
