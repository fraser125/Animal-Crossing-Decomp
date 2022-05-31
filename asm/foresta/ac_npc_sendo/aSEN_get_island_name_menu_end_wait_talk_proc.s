lbl_80574E24:
/* 80574E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574E28  7C 08 02 A6 */	mflr r0
/* 80574E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574E34  7C 7F 1B 78 */	mr r31, r3
/* 80574E38  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 80574E3C  28 00 00 00 */	cmplwi r0, 0
/* 80574E40  40 82 00 2C */	bne lbl_80574E6C
/* 80574E44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80574E48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80574E4C  3C 63 00 02 */	addis r3, r3, 2
/* 80574E50  38 63 25 40 */	addi r3, r3, 0x2540
/* 80574E54  4B E3 ED A9 */	bl mISL_KeepIsland
/* 80574E58  4B E4 A8 51 */	bl func_803BF6A8
/* 80574E5C  4B E4 AD 2D */	bl mMsg_request_main_appear_wait_type1
/* 80574E60  7F E3 FB 78 */	mr r3, r31
/* 80574E64  38 80 00 07 */	li r4, 7
/* 80574E68  48 00 11 05 */	bl aSEN_change_talk_proc
lbl_80574E6C:
/* 80574E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574E74  7C 08 03 A6 */	mtlr r0
/* 80574E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80574E7C  4E 80 00 20 */	blr 
