lbl_80404BF4:
/* 80404BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80404BF8  7C 08 02 A6 */	mflr r0
/* 80404BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80404C00  39 61 00 20 */	addi r11, r1, 0x20
/* 80404C04  4B C9 62 C9 */	bl func_8009AECC
/* 80404C08  3C A0 81 1D */	lis r5, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80404C0C  3C C0 81 1C */	lis r6, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80404C10  80 05 B7 A8 */	lwz r0, data_811CB7A8@l(r5)  /* 0x811CB7A8@l */
/* 80404C14  7C 7C 1B 78 */	mr r28, r3
/* 80404C18  7C 9D 23 78 */	mr r29, r4
/* 80404C1C  3B E6 52 F0 */	addi r31, r6, data_811C52F0@l /* 0x811C52F0@l */
/* 80404C20  2C 00 00 00 */	cmpwi r0, 0
/* 80404C24  41 82 01 04 */	beq lbl_80404D28
/* 80404C28  83 DD 02 D0 */	lwz r30, 0x2d0(r29)
/* 80404C2C  7F C3 F3 78 */	mr r3, r30
/* 80404C30  48 00 07 99 */	bl func_804053C8
/* 80404C34  80 FD 02 C0 */	lwz r7, 0x2c0(r29)
/* 80404C38  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80404C3C  3C C0 DE 00 */	lis r6, 0xde00
/* 80404C40  7C 65 1B 78 */	mr r5, r3
/* 80404C44  38 67 00 08 */	addi r3, r7, 8
/* 80404C48  38 00 00 04 */	li r0, 4
/* 80404C4C  90 7D 02 C0 */	stw r3, 0x2c0(r29)
/* 80404C50  39 5F 00 14 */	addi r10, r31, 0x14
/* 80404C54  39 04 61 38 */	addi r8, r4, debug_mode@l /* 0x81166138@l */
/* 80404C58  38 60 00 00 */	li r3, 0
/* 80404C5C  90 C7 00 00 */	stw r6, 0(r7)
/* 80404C60  38 80 00 00 */	li r4, 0
/* 80404C64  38 C0 00 00 */	li r6, 0
/* 80404C68  90 A7 00 04 */	stw r5, 4(r7)
/* 80404C6C  7C 09 03 A6 */	mtctr r0
lbl_80404C70:
/* 80404C70  39 86 00 14 */	addi r12, r6, 0x14
/* 80404C74  7D 9C 62 14 */	add r12, r28, r12
/* 80404C78  88 0C 00 04 */	lbz r0, 4(r12)
/* 80404C7C  28 00 00 00 */	cmplwi r0, 0
/* 80404C80  40 82 00 34 */	bne lbl_80404CB4
/* 80404C84  A0 0C 00 00 */	lhz r0, 0(r12)
/* 80404C88  39 3F 00 04 */	addi r9, r31, 4
/* 80404C8C  39 7F 00 0C */	addi r11, r31, 0xc
/* 80404C90  38 FF 00 14 */	addi r7, r31, 0x14
/* 80404C94  7C 09 23 2E */	sthx r0, r9, r4
/* 80404C98  A0 0C 00 0C */	lhz r0, 0xc(r12)
/* 80404C9C  7D 29 22 2E */	lhzx r9, r9, r4
/* 80404CA0  7C 0B 23 2E */	sthx r0, r11, r4
/* 80404CA4  7C 0B 22 2E */	lhzx r0, r11, r4
/* 80404CA8  7D 20 03 78 */	or r0, r9, r0
/* 80404CAC  7C 07 23 2E */	sthx r0, r7, r4
/* 80404CB0  48 00 00 34 */	b lbl_80404CE4
lbl_80404CB4:
/* 80404CB4  30 03 FF FF */	addic r0, r3, -1
/* 80404CB8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80404CBC  7D 20 01 10 */	subfe r9, r0, r0
/* 80404CC0  39 9F 00 04 */	addi r12, r31, 4
/* 80404CC4  38 07 FF FF */	addi r0, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80404CC8  3B 60 00 00 */	li r27, 0
/* 80404CCC  39 7F 00 0C */	addi r11, r31, 0xc
/* 80404CD0  38 FF 00 14 */	addi r7, r31, 0x14
/* 80404CD4  7C 00 48 38 */	and r0, r0, r9
/* 80404CD8  7F 6C 23 2E */	sthx r27, r12, r4
/* 80404CDC  7F 6B 23 2E */	sthx r27, r11, r4
/* 80404CE0  7C 07 23 2E */	sthx r0, r7, r4
lbl_80404CE4:
/* 80404CE4  7D 2A 22 2E */	lhzx r9, r10, r4
/* 80404CE8  38 04 10 24 */	addi r0, r4, 0x1024
/* 80404CEC  80 E8 00 00 */	lwz r7, 0(r8)
/* 80404CF0  38 C6 00 18 */	addi r6, r6, 0x18
/* 80404CF4  38 63 00 01 */	addi r3, r3, 1
/* 80404CF8  38 84 00 02 */	addi r4, r4, 2
/* 80404CFC  7D 27 03 2E */	sthx r9, r7, r0
/* 80404D00  42 00 FF 70 */	bdnz lbl_80404C70
/* 80404D04  3C 00 DF 00 */	lis r0, 0xdf00
/* 80404D08  3B 65 00 08 */	addi r27, r5, 8
/* 80404D0C  90 05 00 00 */	stw r0, 0(r5)
/* 80404D10  38 00 00 00 */	li r0, 0
/* 80404D14  7F C3 F3 78 */	mr r3, r30
/* 80404D18  7F 64 DB 78 */	mr r4, r27
/* 80404D1C  90 05 00 04 */	stw r0, 4(r5)
/* 80404D20  48 00 06 B1 */	bl gfxclose
/* 80404D24  93 7D 02 D0 */	stw r27, 0x2d0(r29)
lbl_80404D28:
/* 80404D28  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80404D2C  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80404D30  2C 00 00 00 */	cmpwi r0, 0
/* 80404D34  41 82 00 0C */	beq lbl_80404D40
/* 80404D38  7F A3 EB 78 */	mr r3, r29
/* 80404D3C  4B F9 33 49 */	bl Debug_mode_output
lbl_80404D40:
/* 80404D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80404D44  4B C9 61 D5 */	bl func_8009AF18
/* 80404D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80404D4C  7C 08 03 A6 */	mtlr r0
/* 80404D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80404D54  4E 80 00 20 */	blr 
