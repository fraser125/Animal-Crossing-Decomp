lbl_805765F0:
/* 805765F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805765F4  7C 08 02 A6 */	mflr r0
/* 805765F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805765FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80576600  4B B2 48 CD */	bl func_8009AECC
/* 80576604  3C 80 80 6C */	lis r4, data_806BF980@ha /* 0x806BF980@ha */
/* 80576608  7C 7B 1B 78 */	mr r27, r3
/* 8057660C  3B A4 F9 80 */	addi r29, r4, data_806BF980@l /* 0x806BF980@l */
/* 80576610  3B 80 00 00 */	li r28, 0
/* 80576614  3B DD 00 8C */	addi r30, r29, 0x8c
/* 80576618  3B E0 00 00 */	li r31, 0
lbl_8057661C:
/* 8057661C  7C 3E FC 2E */	lfsx f1, r30, r31
/* 80576620  38 7B 01 A8 */	addi r3, r27, 0x1a8
/* 80576624  4B DF 9E 65 */	bl cKF_FrameControl_passCheck_now
/* 80576628  2C 03 00 00 */	cmpwi r3, 0
/* 8057662C  41 82 00 1C */	beq lbl_80576648
/* 80576630  57 80 08 3C */	slwi r0, r28, 1
/* 80576634  38 7D 00 94 */	addi r3, r29, 0x94
/* 80576638  7C 63 02 2E */	lhzx r3, r3, r0
/* 8057663C  38 9D 00 98 */	addi r4, r29, 0x98
/* 80576640  48 0B 79 69 */	bl sAdo_OngenTrgStart
/* 80576644  48 00 00 14 */	b lbl_80576658
lbl_80576648:
/* 80576648  3B 9C 00 01 */	addi r28, r28, 1
/* 8057664C  3B FF 00 04 */	addi r31, r31, 4
/* 80576650  2C 1C 00 02 */	cmpwi r28, 2
/* 80576654  41 80 FF C8 */	blt lbl_8057661C
lbl_80576658:
/* 80576658  39 61 00 20 */	addi r11, r1, 0x20
/* 8057665C  4B B2 48 BD */	bl func_8009AF18
/* 80576660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576664  7C 08 03 A6 */	mtlr r0
/* 80576668  38 21 00 20 */	addi r1, r1, 0x20
/* 8057666C  4E 80 00 20 */	blr 
