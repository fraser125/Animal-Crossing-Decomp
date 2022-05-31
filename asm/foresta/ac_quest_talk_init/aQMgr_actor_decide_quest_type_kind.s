lbl_80489F20:
/* 80489F20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80489F24  7C 08 02 A6 */	mflr r0
/* 80489F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80489F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80489F30  4B C1 0F A1 */	bl func_8009AED0
/* 80489F34  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80489F38  7C 7C 1B 78 */	mr r28, r3
/* 80489F3C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80489F40  7C 9F 23 78 */	mr r31, r4
/* 80489F44  3C 63 00 02 */	addis r3, r3, 2
/* 80489F48  3B A0 00 01 */	li r29, 1
/* 80489F4C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80489F50  3F C3 20 00 */	addis r30, r3, 0x2000
/* 80489F54  3B DE 00 02 */	addi r30, r30, 2
/* 80489F58  4B F2 9B B1 */	bl mLd_PlayerManKindCheck
/* 80489F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80489F60  40 82 00 18 */	bne lbl_80489F78
/* 80489F64  7F C3 F3 78 */	mr r3, r30
/* 80489F68  4B F1 0A B1 */	bl mEv_CheckEvent
/* 80489F6C  2C 03 00 01 */	cmpwi r3, 1
/* 80489F70  40 82 00 08 */	bne lbl_80489F78
/* 80489F74  3B A0 00 00 */	li r29, 0
lbl_80489F78:
/* 80489F78  3C 60 80 69 */	lis r3, type_kind_decide_table@ha /* 0x8068B0EC@ha */
/* 80489F7C  57 A0 10 3A */	slwi r0, r29, 2
/* 80489F80  38 63 B0 EC */	addi r3, r3, type_kind_decide_table@l /* 0x8068B0EC@l */
/* 80489F84  7F C3 00 2E */	lwzx r30, r3, r0
/* 80489F88  80 7E 00 04 */	lwz r3, 4(r30)
/* 80489F8C  4B F5 A4 45 */	bl mQst_GetRandom
/* 80489F90  80 9E 00 00 */	lwz r4, 0(r30)
/* 80489F94  54 60 10 3A */	slwi r0, r3, 2
/* 80489F98  7C 04 00 2E */	lwzx r0, r4, r0
/* 80489F9C  90 1C 00 00 */	stw r0, 0(r28)
/* 80489FA0  80 1C 00 00 */	lwz r0, 0(r28)
/* 80489FA4  54 00 10 3A */	slwi r0, r0, 2
/* 80489FA8  7C 7E 02 14 */	add r3, r30, r0
/* 80489FAC  83 C3 00 08 */	lwz r30, 8(r3)
/* 80489FB0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80489FB4  4B F5 A4 1D */	bl mQst_GetRandom
/* 80489FB8  54 60 10 3A */	slwi r0, r3, 2
/* 80489FBC  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80489FC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80489FC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80489FC8  4B C1 0F 55 */	bl func_8009AF1C
/* 80489FCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80489FD0  7C 08 03 A6 */	mtlr r0
/* 80489FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80489FD8  4E 80 00 20 */	blr 
