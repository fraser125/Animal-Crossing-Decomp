lbl_8057F2E8:
/* 8057F2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F2EC  7C 08 02 A6 */	mflr r0
/* 8057F2F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057F2F4  3C A0 80 6C */	lis r5, dt_tbl_514@ha /* 0x806C0AD0@ha */
/* 8057F2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F2FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057F300  3C 84 00 02 */	addis r4, r4, 2
/* 8057F304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F308  93 C1 00 08 */	stw r30, 8(r1)
/* 8057F30C  7C 7E 1B 78 */	mr r30, r3
/* 8057F310  80 C4 60 EC */	lwz r6, 0x60ec(r4)
/* 8057F314  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8057F318  28 06 00 00 */	cmplwi r6, 0
/* 8057F31C  54 04 18 38 */	slwi r4, r0, 3
/* 8057F320  38 05 0A D0 */	addi r0, r5, dt_tbl_514@l /* 0x806C0AD0@l */
/* 8057F324  7F E0 22 14 */	add r31, r0, r4
/* 8057F328  41 82 00 18 */	beq lbl_8057F340
/* 8057F32C  81 86 00 00 */	lwz r12, 0(r6)
/* 8057F330  88 9F 00 04 */	lbz r4, 4(r31)
/* 8057F334  7D 89 03 A6 */	mtctr r12
/* 8057F338  4E 80 04 21 */	bctrl 
/* 8057F33C  48 00 00 10 */	b lbl_8057F34C
lbl_8057F340:
/* 8057F340  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8057F344  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8057F348  90 1E 09 94 */	stw r0, 0x994(r30)
lbl_8057F34C:
/* 8057F34C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8057F350  4B E1 91 C5 */	bl mDemo_Set_msg_num
/* 8057F354  38 60 00 01 */	li r3, 1
/* 8057F358  4B E1 94 F1 */	bl mDemo_Set_talk_turn
/* 8057F35C  88 7F 00 05 */	lbz r3, 5(r31)
/* 8057F360  4B E1 95 C1 */	bl mDemo_Set_camera
/* 8057F364  38 60 00 01 */	li r3, 1
/* 8057F368  4B E1 94 51 */	bl mDemo_Set_talk_return_demo_wait
/* 8057F36C  88 1E 09 A2 */	lbz r0, 0x9a2(r30)
/* 8057F370  28 00 00 02 */	cmplwi r0, 2
/* 8057F374  40 82 00 1C */	bne lbl_8057F390
/* 8057F378  A8 7E 09 78 */	lha r3, 0x978(r30)
/* 8057F37C  7C 60 07 35 */	extsh. r0, r3
/* 8057F380  41 82 00 08 */	beq lbl_8057F388
/* 8057F384  98 7E 09 A3 */	stb r3, 0x9a3(r30)
lbl_8057F388:
/* 8057F388  38 00 00 00 */	li r0, 0
/* 8057F38C  B0 1E 09 78 */	sth r0, 0x978(r30)
lbl_8057F390:
/* 8057F390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F398  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057F39C  7C 08 03 A6 */	mtlr r0
/* 8057F3A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F3A4  4E 80 00 20 */	blr 
