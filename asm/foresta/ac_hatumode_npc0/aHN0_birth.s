lbl_8052B0EC:
/* 8052B0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B0F0  7C 08 02 A6 */	mflr r0
/* 8052B0F4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052B0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B0FC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052B100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B104  7C 9F 23 78 */	mr r31, r4
/* 8052B108  3C 85 00 02 */	addis r4, r5, 2
/* 8052B10C  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B110  7C 7E 1B 78 */	mr r30, r3
/* 8052B114  80 04 60 D0 */	lwz r0, 0x60d0(r4)
/* 8052B118  28 00 00 00 */	cmplwi r0, 0
/* 8052B11C  41 82 00 40 */	beq lbl_8052B15C
/* 8052B120  4B FF FC 95 */	bl aHN0_set_start_position
/* 8052B124  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8052B128  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8052B12C  34 03 2F A8 */	addic. r0, r3, 0x2fa8
/* 8052B130  40 82 00 18 */	bne lbl_8052B148
/* 8052B134  7F C3 F3 78 */	mr r3, r30
/* 8052B138  7F E4 FB 78 */	mr r4, r31
/* 8052B13C  38 A0 00 00 */	li r5, 0
/* 8052B140  48 00 09 09 */	bl aHN0_setup_think_proc
/* 8052B144  48 00 00 20 */	b lbl_8052B164
lbl_8052B148:
/* 8052B148  7F C3 F3 78 */	mr r3, r30
/* 8052B14C  7F E4 FB 78 */	mr r4, r31
/* 8052B150  38 A0 00 01 */	li r5, 1
/* 8052B154  48 00 08 F5 */	bl aHN0_setup_think_proc
/* 8052B158  48 00 00 0C */	b lbl_8052B164
lbl_8052B15C:
/* 8052B15C  38 00 00 01 */	li r0, 1
/* 8052B160  98 1E 09 A6 */	stb r0, 0x9a6(r30)
lbl_8052B164:
/* 8052B164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B16C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B170  7C 08 03 A6 */	mtlr r0
/* 8052B174  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B178  4E 80 00 20 */	blr 
