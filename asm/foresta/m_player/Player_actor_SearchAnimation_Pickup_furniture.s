lbl_804EE824:
/* 804EE824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE828  7C 08 02 A6 */	mflr r0
/* 804EE82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE834  7C 9F 23 78 */	mr r31, r4
/* 804EE838  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE83C  7C 7E 1B 78 */	mr r30, r3
/* 804EE840  4B FE 8C 9D */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EE844  2C 03 00 00 */	cmpwi r3, 0
/* 804EE848  40 82 00 2C */	bne lbl_804EE874
/* 804EE84C  7F C3 F3 78 */	mr r3, r30
/* 804EE850  4B FF FD 29 */	bl Player_actor_Set_Item_Pickup_furniture
/* 804EE854  7F C3 F3 78 */	mr r3, r30
/* 804EE858  7F E4 FB 78 */	mr r4, r31
/* 804EE85C  4B FF FF 55 */	bl Player_actor_SetSound_Pickup_furniture
/* 804EE860  7F C3 F3 78 */	mr r3, r30
/* 804EE864  7F E4 FB 78 */	mr r4, r31
/* 804EE868  38 A0 00 00 */	li r5, 0
/* 804EE86C  38 C0 00 00 */	li r6, 0
/* 804EE870  4B FE CA 81 */	bl Player_actor_Set_FootMark_Base1
lbl_804EE874:
/* 804EE874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE87C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE880  7C 08 03 A6 */	mtlr r0
/* 804EE884  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE888  4E 80 00 20 */	blr 
