lbl_803E2F88:
/* 803E2F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E2F8C  7C 08 02 A6 */	mflr r0
/* 803E2F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2F94  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2F98  4B CB 7F 35 */	bl func_8009AECC
/* 803E2F9C  7C 7B 1B 79 */	or. r27, r3, r3
/* 803E2FA0  3B E0 00 00 */	li r31, 0
/* 803E2FA4  41 80 00 C8 */	blt lbl_803E306C
/* 803E2FA8  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803E2FAC  40 80 00 C0 */	bge lbl_803E306C
/* 803E2FB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2FB4  57 60 08 3C */	slwi r0, r27, 1
/* 803E2FB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E2FBC  3C 63 00 02 */	addis r3, r3, 2
/* 803E2FC0  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 803E2FC4  1C 9B 00 28 */	mulli r4, r27, 0x28
/* 803E2FC8  7C 65 02 14 */	add r3, r5, r0
/* 803E2FCC  A3 83 00 68 */	lhz r28, 0x68(r3)
/* 803E2FD0  3B C4 00 94 */	addi r30, r4, 0x94
/* 803E2FD4  7F C5 F2 14 */	add r30, r5, r30
/* 803E2FD8  3B A5 02 EC */	addi r29, r5, 0x2ec
/* 803E2FDC  28 1C 00 00 */	cmplwi r28, 0
/* 803E2FE0  41 82 00 8C */	beq lbl_803E306C
/* 803E2FE4  7F C3 F3 78 */	mr r3, r30
/* 803E2FE8  4B FF FB E9 */	bl mQst_CheckFreeQuest
/* 803E2FEC  2C 03 00 00 */	cmpwi r3, 0
/* 803E2FF0  40 82 00 18 */	bne lbl_803E3008
/* 803E2FF4  7F C3 F3 78 */	mr r3, r30
/* 803E2FF8  4B FF FB F5 */	bl mQst_CheckLimitOver
/* 803E2FFC  2C 03 00 01 */	cmpwi r3, 1
/* 803E3000  40 82 00 08 */	bne lbl_803E3008
/* 803E3004  3B E0 00 01 */	li r31, 1
lbl_803E3008:
/* 803E3008  2C 1F 00 00 */	cmpwi r31, 0
/* 803E300C  40 82 00 60 */	bne lbl_803E306C
/* 803E3010  3B C0 00 00 */	li r30, 0
lbl_803E3014:
/* 803E3014  7F A3 EB 78 */	mr r3, r29
/* 803E3018  4B FF FB B9 */	bl mQst_CheckFreeQuest
/* 803E301C  2C 03 00 00 */	cmpwi r3, 0
/* 803E3020  40 82 00 3C */	bne lbl_803E305C
/* 803E3024  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 803E3028  54 00 C0 0A */	rlwinm r0, r0, 0x18, 0, 5
/* 803E302C  7C 00 DE 70 */	srawi r0, r0, 0x1b
/* 803E3030  7C 00 D8 00 */	cmpw r0, r27
/* 803E3034  40 82 00 28 */	bne lbl_803E305C
/* 803E3038  A0 1D 00 28 */	lhz r0, 0x28(r29)
/* 803E303C  7C 1C 00 40 */	cmplw r28, r0
/* 803E3040  40 82 00 1C */	bne lbl_803E305C
/* 803E3044  7F A3 EB 78 */	mr r3, r29
/* 803E3048  4B FF FB A5 */	bl mQst_CheckLimitOver
/* 803E304C  2C 03 00 01 */	cmpwi r3, 1
/* 803E3050  40 82 00 0C */	bne lbl_803E305C
/* 803E3054  3B E0 00 01 */	li r31, 1
/* 803E3058  48 00 00 14 */	b lbl_803E306C
lbl_803E305C:
/* 803E305C  3B DE 00 01 */	addi r30, r30, 1
/* 803E3060  3B BD 00 58 */	addi r29, r29, 0x58
/* 803E3064  2C 1E 00 05 */	cmpwi r30, 5
/* 803E3068  41 80 FF AC */	blt lbl_803E3014
lbl_803E306C:
/* 803E306C  7F E3 FB 78 */	mr r3, r31
/* 803E3070  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3074  4B CB 7E A5 */	bl func_8009AF18
/* 803E3078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E307C  7C 08 03 A6 */	mtlr r0
/* 803E3080  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3084  4E 80 00 20 */	blr 
