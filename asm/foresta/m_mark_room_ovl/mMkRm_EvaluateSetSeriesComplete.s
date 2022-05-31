lbl_804D2C70:
/* 804D2C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D2C74  3C 80 80 6A */	lis r4, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D2C78  39 04 C9 F0 */	addi r8, r4, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D2C7C  39 40 00 00 */	li r10, 0
/* 804D2C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D2C84  39 20 00 00 */	li r9, 0
/* 804D2C88  38 80 00 00 */	li r4, 0
/* 804D2C8C  38 A0 00 00 */	li r5, 0
lbl_804D2C90:
/* 804D2C90  7C C8 2A 14 */	add r6, r8, r5
/* 804D2C94  88 06 00 00 */	lbz r0, 0(r6)
/* 804D2C98  2C 00 00 03 */	cmpwi r0, 3
/* 804D2C9C  40 82 00 74 */	bne lbl_804D2D10
/* 804D2CA0  88 E6 00 01 */	lbz r7, 1(r6)
/* 804D2CA4  2C 07 00 00 */	cmpwi r7, 0
/* 804D2CA8  41 82 00 68 */	beq lbl_804D2D10
/* 804D2CAC  3C C0 81 1D */	lis r6, mMkRm_search_table@ha /* 0x811D2F18@ha */
/* 804D2CB0  39 60 00 00 */	li r11, 0
/* 804D2CB4  38 C6 2F 18 */	addi r6, r6, mMkRm_search_table@l /* 0x811D2F18@l */
/* 804D2CB8  39 80 00 00 */	li r12, 0
/* 804D2CBC  7F E6 20 2E */	lwzx r31, r6, r4
/* 804D2CC0  38 C0 00 01 */	li r6, 1
/* 804D2CC4  7C E9 03 A6 */	mtctr r7
/* 804D2CC8  40 81 00 14 */	ble lbl_804D2CDC
lbl_804D2CCC:
/* 804D2CCC  7C C0 60 30 */	slw r0, r6, r12
/* 804D2CD0  39 8C 00 01 */	addi r12, r12, 1
/* 804D2CD4  7D 6B 03 78 */	or r11, r11, r0
/* 804D2CD8  42 00 FF F4 */	bdnz lbl_804D2CCC
lbl_804D2CDC:
/* 804D2CDC  7F E0 58 38 */	and r0, r31, r11
/* 804D2CE0  7C 0B 00 40 */	cmplw r11, r0
/* 804D2CE4  40 82 00 2C */	bne lbl_804D2D10
/* 804D2CE8  1C 07 0B B8 */	mulli r0, r7, 0xbb8
/* 804D2CEC  80 E3 00 00 */	lwz r7, 0(r3)
/* 804D2CF0  3C C0 81 1D */	lis r6, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2CF4  39 40 00 01 */	li r10, 1
/* 804D2CF8  7C 07 02 14 */	add r0, r7, r0
/* 804D2CFC  38 E6 2D 10 */	addi r7, r6, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2D00  90 03 00 00 */	stw r0, 0(r3)
/* 804D2D04  80 07 00 00 */	lwz r0, 0(r7)
/* 804D2D08  60 00 00 01 */	ori r0, r0, 1
/* 804D2D0C  90 07 00 00 */	stw r0, 0(r7)
lbl_804D2D10:
/* 804D2D10  39 29 00 01 */	addi r9, r9, 1
/* 804D2D14  38 A5 00 03 */	addi r5, r5, 3
/* 804D2D18  2C 09 00 3C */	cmpwi r9, 0x3c
/* 804D2D1C  38 84 00 04 */	addi r4, r4, 4
/* 804D2D20  41 80 FF 70 */	blt lbl_804D2C90
/* 804D2D24  7D 43 53 78 */	mr r3, r10
/* 804D2D28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D2D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D2D30  4E 80 00 20 */	blr 
