lbl_805CE9A0:
/* 805CE9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CE9A4  7C 08 02 A6 */	mflr r0
/* 805CE9A8  38 80 00 00 */	li r4, 0
/* 805CE9AC  38 C0 00 00 */	li r6, 0
/* 805CE9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CE9B4  38 00 00 08 */	li r0, 8
/* 805CE9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CE9BC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CE9C0  38 60 00 01 */	li r3, 1
/* 805CE9C4  83 E5 09 DC */	lwz r31, 0x9dc(r5)
/* 805CE9C8  90 85 09 3C */	stw r4, 0x93c(r5)
/* 805CE9CC  38 FF 00 04 */	addi r7, r31, 4
/* 805CE9D0  90 85 07 18 */	stw r4, 0x718(r5)
/* 805CE9D4  90 65 07 44 */	stw r3, 0x744(r5)
/* 805CE9D8  B0 65 07 48 */	sth r3, 0x748(r5)
/* 805CE9DC  7C 09 03 A6 */	mtctr r0
lbl_805CE9E0:
/* 805CE9E0  98 C7 00 00 */	stb r6, 0(r7)
/* 805CE9E4  38 C6 00 01 */	addi r6, r6, 1
/* 805CE9E8  38 E7 00 01 */	addi r7, r7, 1
/* 805CE9EC  42 00 FF F4 */	bdnz lbl_805CE9E0
/* 805CE9F0  38 A0 00 00 */	li r5, 0
/* 805CE9F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CE9F8  B0 BF 00 0C */	sth r5, 0xc(r31)
/* 805CE9FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CEA00  38 00 00 FF */	li r0, 0xff
/* 805CEA04  98 BF 00 0F */	stb r5, 0xf(r31)
/* 805CEA08  3C 83 00 02 */	addis r4, r3, 2
/* 805CEA0C  98 1F 00 27 */	stb r0, 0x27(r31)
/* 805CEA10  98 BF 00 0E */	stb r5, 0xe(r31)
/* 805CEA14  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 805CEA18  A0 63 10 88 */	lhz r3, 0x1088(r3)
/* 805CEA1C  28 03 01 00 */	cmplwi r3, 0x100
/* 805CEA20  41 80 00 34 */	blt lbl_805CEA54
/* 805CEA24  38 C3 FF 00 */	addi r6, r3, -256
/* 805CEA28  38 00 00 08 */	li r0, 8
/* 805CEA2C  98 DF 00 27 */	stb r6, 0x27(r31)
/* 805CEA30  7C 09 03 A6 */	mtctr r0
lbl_805CEA34:
/* 805CEA34  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 805CEA38  38 05 23 40 */	addi r0, r5, 0x2340
/* 805CEA3C  7C 03 00 AE */	lbzx r0, r3, r0
/* 805CEA40  7C 06 00 00 */	cmpw r6, r0
/* 805CEA44  40 82 00 08 */	bne lbl_805CEA4C
/* 805CEA48  98 BF 00 28 */	stb r5, 0x28(r31)
lbl_805CEA4C:
/* 805CEA4C  38 A5 00 01 */	addi r5, r5, 1
/* 805CEA50  42 00 FF E4 */	bdnz lbl_805CEA34
lbl_805CEA54:
/* 805CEA54  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000CCA0@ha */
/* 805CEA58  80 7F 00 00 */	lwz r3, 0(r31)
/* 805CEA5C  38 84 CC A0 */	addi r4, r4, 0xCCA0 /* 0x0000CCA0@l */
/* 805CEA60  38 A0 00 00 */	li r5, 0
/* 805CEA64  4B E2 B4 FD */	bl mCD_save_data_aram_to_main
/* 805CEA68  38 00 00 68 */	li r0, 0x68
/* 805CEA6C  38 60 00 00 */	li r3, 0
/* 805CEA70  7C 09 03 A6 */	mtctr r0
lbl_805CEA74:
/* 805CEA74  38 03 00 29 */	addi r0, r3, 0x29
/* 805CEA78  7C 7F 01 AE */	stbx r3, r31, r0
/* 805CEA7C  38 63 00 01 */	addi r3, r3, 1
/* 805CEA80  42 00 FF F4 */	bdnz lbl_805CEA74
/* 805CEA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CEA88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CEA8C  7C 08 03 A6 */	mtlr r0
/* 805CEA90  38 21 00 10 */	addi r1, r1, 0x10
/* 805CEA94  4E 80 00 20 */	blr 
