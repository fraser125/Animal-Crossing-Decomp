lbl_80556F6C:
/* 80556F6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80556F70  7C 08 02 A6 */	mflr r0
/* 80556F74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80556F78  39 61 00 30 */	addi r11, r1, 0x30
/* 80556F7C  4B B4 3F 55 */	bl func_8009AED0
/* 80556F80  3C A0 80 55 */	lis r5, aMJN_act_proc@ha /* 0x80556CB4@ha */
/* 80556F84  3C C0 80 6A */	lis r6, data_806A66E0@ha /* 0x806A66E0@ha */
/* 80556F88  38 05 6C B4 */	addi r0, r5, aMJN_act_proc@l /* 0x80556CB4@l */
/* 80556F8C  7C 7E 1B 78 */	mr r30, r3
/* 80556F90  90 03 08 04 */	stw r0, 0x804(r3)
/* 80556F94  7C 9D 23 78 */	mr r29, r4
/* 80556F98  3B E6 66 E0 */	addi r31, r6, data_806A66E0@l /* 0x806A66E0@l */
/* 80556F9C  4B FF FC F1 */	bl func_80556C8C
/* 80556FA0  38 00 00 FE */	li r0, 0xfe
/* 80556FA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80556FA8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80556FAC  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80556FB0  3C 64 00 03 */	addis r3, r4, 3
/* 80556FB4  38 00 00 00 */	li r0, 0
/* 80556FB8  98 03 88 69 */	stb r0, -0x7797(r3)
/* 80556FBC  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80556FC0  2C 00 00 01 */	cmpwi r0, 1
/* 80556FC4  40 82 00 0C */	bne lbl_80556FD0
/* 80556FC8  38 60 00 04 */	li r3, 4
/* 80556FCC  48 00 00 10 */	b lbl_80556FDC
lbl_80556FD0:
/* 80556FD0  3C 64 00 02 */	addis r3, r4, 2
/* 80556FD4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80556FD8  4B E5 C5 E1 */	bl mHS_get_arrange_idx
lbl_80556FDC:
/* 80556FDC  54 7C 10 3A */	slwi r28, r3, 2
/* 80556FE0  38 9F 00 70 */	addi r4, r31, 0x70
/* 80556FE4  7C 04 E4 2E */	lfsx f0, r4, r28
/* 80556FE8  54 60 08 3C */	slwi r0, r3, 1
/* 80556FEC  3C 80 80 65 */	lis r4, lit_631@ha /* 0x8064964C@ha */
/* 80556FF0  38 DF 00 84 */	addi r6, r31, 0x84
/* 80556FF4  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80556FF8  38 BF 00 98 */	addi r5, r31, 0x98
/* 80556FFC  C0 24 96 4C */	lfs f1, lit_631@l(r4)  /* 0x8064964C@l */
/* 80557000  38 61 00 08 */	addi r3, r1, 8
/* 80557004  7C 06 E4 2E */	lfsx f0, r6, r28
/* 80557008  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8055700C  7C 05 02 AE */	lhax r0, r5, r0
/* 80557010  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 80557014  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80557018  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8055701C  90 81 00 08 */	stw r4, 8(r1)
/* 80557020  90 01 00 0C */	stw r0, 0xc(r1)
/* 80557024  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80557028  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055702C  4B E3 87 F5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80557030  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 80557034  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 80557038  7F C3 F3 78 */	mr r3, r30
/* 8055703C  7F A4 EB 78 */	mr r4, r29
/* 80557040  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80557044  48 00 00 35 */	bl aMJN_setup_think_proc
/* 80557048  39 61 00 30 */	addi r11, r1, 0x30
/* 8055704C  4B B4 3E D1 */	bl func_8009AF1C
/* 80557050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80557054  7C 08 03 A6 */	mtlr r0
/* 80557058  38 21 00 30 */	addi r1, r1, 0x30
/* 8055705C  4E 80 00 20 */	blr 
