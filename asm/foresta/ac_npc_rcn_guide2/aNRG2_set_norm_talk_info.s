lbl_805715CC:
/* 805715CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805715D0  7C 08 02 A6 */	mflr r0
/* 805715D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805715D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805715DC  4B B2 98 F9 */	bl func_8009AED4
/* 805715E0  7C 7D 1B 78 */	mr r29, r3
/* 805715E4  3C 60 80 6C */	lis r3, dt_tbl_864@ha /* 0x806BF15C@ha */
/* 805715E8  83 FD 09 A4 */	lwz r31, 0x9a4(r29)
/* 805715EC  38 03 F1 5C */	addi r0, r3, dt_tbl_864@l /* 0x806BF15C@l */
/* 805715F0  57 E3 18 38 */	slwi r3, r31, 3
/* 805715F4  7F C0 1A 14 */	add r30, r0, r3
/* 805715F8  4B E7 25 71 */	bl mQst_GetFirstJobData
/* 805715FC  2C 1F 00 12 */	cmpwi r31, 0x12
/* 80571600  41 80 00 14 */	blt lbl_80571614
/* 80571604  2C 1F 00 21 */	cmpwi r31, 0x21
/* 80571608  41 81 00 0C */	bgt lbl_80571614
/* 8057160C  38 00 00 01 */	li r0, 1
/* 80571610  90 1D 09 B8 */	stw r0, 0x9b8(r29)
lbl_80571614:
/* 80571614  4B E7 26 C1 */	bl mQst_CheckFirstJobFin
/* 80571618  2C 03 00 00 */	cmpwi r3, 0
/* 8057161C  40 82 00 08 */	bne lbl_80571624
/* 80571620  4B FF ED 55 */	bl aNRG2_set_str_proc
lbl_80571624:
/* 80571624  80 7E 00 00 */	lwz r3, 0(r30)
/* 80571628  4B E2 6E ED */	bl mDemo_Set_msg_num
/* 8057162C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80571630  39 61 00 20 */	addi r11, r1, 0x20
/* 80571634  90 1D 09 AC */	stw r0, 0x9ac(r29)
/* 80571638  4B B2 98 E9 */	bl func_8009AF20
/* 8057163C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80571640  7C 08 03 A6 */	mtlr r0
/* 80571644  38 21 00 20 */	addi r1, r1, 0x20
/* 80571648  4E 80 00 20 */	blr 
