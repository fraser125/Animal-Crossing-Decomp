lbl_804889A8:
/* 804889A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804889AC  7C 08 02 A6 */	mflr r0
/* 804889B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804889B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804889B8  4B C1 25 15 */	bl func_8009AECC
/* 804889BC  7C BC 2B 78 */	mr r28, r5
/* 804889C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804889C4  2C 1C 00 02 */	cmpwi r28, 2
/* 804889C8  7C 9B 23 78 */	mr r27, r4
/* 804889CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804889D0  7C DD 33 78 */	mr r29, r6
/* 804889D4  3F E3 00 02 */	addis r31, r3, 2
/* 804889D8  3B C0 FF FF */	li r30, -1
/* 804889DC  40 82 00 58 */	bne lbl_80488A34
/* 804889E0  38 60 00 16 */	li r3, 0x16
/* 804889E4  38 80 00 01 */	li r4, 1
/* 804889E8  4B F1 51 19 */	bl mEv_check_status
/* 804889EC  2C 03 00 01 */	cmpwi r3, 1
/* 804889F0  40 82 00 1C */	bne lbl_80488A0C
/* 804889F4  7F 64 DB 78 */	mr r4, r27
/* 804889F8  38 60 3B D3 */	li r3, 0x3bd3
/* 804889FC  38 A0 00 03 */	li r5, 3
/* 80488A00  4B FF FA 55 */	bl aQMgr_get_random_msg_no
/* 80488A04  7C 7E 1B 78 */	mr r30, r3
/* 80488A08  48 00 00 2C */	b lbl_80488A34
lbl_80488A0C:
/* 80488A0C  38 60 00 11 */	li r3, 0x11
/* 80488A10  38 80 00 01 */	li r4, 1
/* 80488A14  4B F1 50 ED */	bl mEv_check_status
/* 80488A18  2C 03 00 01 */	cmpwi r3, 1
/* 80488A1C  40 82 00 18 */	bne lbl_80488A34
/* 80488A20  7F 64 DB 78 */	mr r4, r27
/* 80488A24  38 60 3B 96 */	li r3, 0x3b96
/* 80488A28  38 A0 00 03 */	li r5, 3
/* 80488A2C  4B FF FA 29 */	bl aQMgr_get_random_msg_no
/* 80488A30  7C 7E 1B 78 */	mr r30, r3
lbl_80488A34:
/* 80488A34  2C 1E FF FF */	cmpwi r30, -1
/* 80488A38  40 82 00 34 */	bne lbl_80488A6C
/* 80488A3C  3C 80 80 69 */	lis r4, l_hello_fine_island_msg_tbl@ha /* 0x8068AD60@ha */
/* 80488A40  3C 60 80 69 */	lis r3, rnd_table@ha /* 0x8068AEF0@ha */
/* 80488A44  57 80 10 3A */	slwi r0, r28, 2
/* 80488A48  88 DF 61 22 */	lbz r6, 0x6122(r31)
/* 80488A4C  38 84 AD 60 */	addi r4, r4, l_hello_fine_island_msg_tbl@l /* 0x8068AD60@l */
/* 80488A50  38 A3 AE F0 */	addi r5, r3, rnd_table@l /* 0x8068AEF0@l */
/* 80488A54  7C 84 00 2E */	lwzx r4, r4, r0
/* 80488A58  7F A3 EB 78 */	mr r3, r29
/* 80488A5C  7C E5 00 2E */	lwzx r7, r5, r0
/* 80488A60  7F 65 DB 78 */	mr r5, r27
/* 80488A64  4B FF F9 8D */	bl aQMgr_actor_get_my_hello_msg_com
/* 80488A68  7C 7E 1B 78 */	mr r30, r3
lbl_80488A6C:
/* 80488A6C  7F C3 F3 78 */	mr r3, r30
/* 80488A70  39 61 00 20 */	addi r11, r1, 0x20
/* 80488A74  4B C1 24 A5 */	bl func_8009AF18
/* 80488A78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488A7C  7C 08 03 A6 */	mtlr r0
/* 80488A80  38 21 00 20 */	addi r1, r1, 0x20
/* 80488A84  4E 80 00 20 */	blr 
