lbl_805185A4:
/* 805185A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805185A8  7C 08 02 A6 */	mflr r0
/* 805185AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805185B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805185B4  4B FF FC F9 */	bl get_fish_save_area
/* 805185B8  7C 7F 1B 78 */	mr r31, r3
/* 805185BC  4B FF FD 51 */	bl get_fish_common_area
/* 805185C0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805185C4  38 80 00 01 */	li r4, 1
/* 805185C8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805185CC  3C A5 00 02 */	addis r5, r5, 2
/* 805185D0  88 05 60 03 */	lbz r0, 0x6003(r5)
/* 805185D4  28 00 00 04 */	cmplwi r0, 4
/* 805185D8  7C 80 00 30 */	slw r0, r4, r0
/* 805185DC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 805185E0  40 82 00 0C */	bne lbl_805185EC
/* 805185E4  98 83 00 00 */	stb r4, 0(r3)
/* 805185E8  48 00 00 10 */	b lbl_805185F8
lbl_805185EC:
/* 805185EC  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 805185F0  7C 00 2B 78 */	or r0, r0, r5
/* 805185F4  98 1F 00 1C */	stb r0, 0x1c(r31)
lbl_805185F8:
/* 805185F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805185FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80518600  7C 08 03 A6 */	mtlr r0
/* 80518604  38 21 00 10 */	addi r1, r1, 0x10
/* 80518608  4E 80 00 20 */	blr 
