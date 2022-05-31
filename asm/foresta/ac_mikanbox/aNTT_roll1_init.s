lbl_805B34F0:
/* 805B34F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B34F4  7C 08 02 A6 */	mflr r0
/* 805B34F8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B34FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3500  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805B3504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3508  7C 9F 23 78 */	mr r31, r4
/* 805B350C  3C 85 00 02 */	addis r4, r5, 2
/* 805B3510  93 C1 00 08 */	stw r30, 8(r1)
/* 805B3514  7C 7E 1B 78 */	mr r30, r3
/* 805B3518  80 84 60 E4 */	lwz r4, 0x60e4(r4)
/* 805B351C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 805B3520  7D 89 03 A6 */	mtctr r12
/* 805B3524  4E 80 04 21 */	bctrl 
/* 805B3528  38 80 01 68 */	li r4, 0x168
/* 805B352C  4B DC 87 DD */	bl mBGMPsComp_make_ps_demo
/* 805B3530  4B DC 8D 99 */	bl mBGMPsComp_delete_ps_quiet
/* 805B3534  38 00 05 00 */	li r0, 0x500
/* 805B3538  7F E3 FB 78 */	mr r3, r31
/* 805B353C  90 1E 08 40 */	stw r0, 0x840(r30)
/* 805B3540  4B E2 61 01 */	bl get_player_actor_withoutCheck
/* 805B3544  7C 64 1B 78 */	mr r4, r3
/* 805B3548  7F E3 FB 78 */	mr r3, r31
/* 805B354C  7F C5 F3 78 */	mr r5, r30
/* 805B3550  38 C0 00 05 */	li r6, 5
/* 805B3554  4B DC F3 9D */	bl Camera2_request_main_staff_roll
/* 805B3558  3C 60 80 5B */	lis r3, aNTT_draw_chk_proc@ha /* 0x805B337C@ha */
/* 805B355C  38 03 33 7C */	addi r0, r3, aNTT_draw_chk_proc@l /* 0x805B337C@l */
/* 805B3560  90 1F 23 F8 */	stw r0, 0x23f8(r31)
/* 805B3564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3568  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B356C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3570  7C 08 03 A6 */	mtlr r0
/* 805B3574  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3578  4E 80 00 20 */	blr 
