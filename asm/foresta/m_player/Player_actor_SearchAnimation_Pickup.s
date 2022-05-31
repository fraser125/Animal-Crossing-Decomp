lbl_804ED6A0:
/* 804ED6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED6A4  7C 08 02 A6 */	mflr r0
/* 804ED6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ED6B0  7C 9F 23 78 */	mr r31, r4
/* 804ED6B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804ED6B8  7C 7E 1B 78 */	mr r30, r3
/* 804ED6BC  4B FE 9E 21 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804ED6C0  2C 03 00 00 */	cmpwi r3, 0
/* 804ED6C4  40 82 00 20 */	bne lbl_804ED6E4
/* 804ED6C8  7F C3 F3 78 */	mr r3, r30
/* 804ED6CC  4B FF FF 61 */	bl Player_actor_SetSound_Pickup
/* 804ED6D0  7F C3 F3 78 */	mr r3, r30
/* 804ED6D4  7F E4 FB 78 */	mr r4, r31
/* 804ED6D8  38 A0 00 00 */	li r5, 0
/* 804ED6DC  38 C0 00 00 */	li r6, 0
/* 804ED6E0  4B FE DC 11 */	bl Player_actor_Set_FootMark_Base1
lbl_804ED6E4:
/* 804ED6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ED6EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ED6F0  7C 08 03 A6 */	mtlr r0
/* 804ED6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED6F8  4E 80 00 20 */	blr 
