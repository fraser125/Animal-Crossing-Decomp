lbl_8037A7A0:
/* 8037A7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A7A4  7C 08 02 A6 */	mflr r0
/* 8037A7A8  2C 04 00 00 */	cmpwi r4, 0
/* 8037A7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A7B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A7B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8037A7B8  7C 7E 1B 78 */	mr r30, r3
/* 8037A7BC  41 80 00 80 */	blt lbl_8037A83C
/* 8037A7C0  2C 04 00 0E */	cmpwi r4, 0xe
/* 8037A7C4  40 80 00 78 */	bge lbl_8037A83C
/* 8037A7C8  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 8037A7CC  7C 04 18 00 */	cmpw r4, r3
/* 8037A7D0  40 80 00 6C */	bge lbl_8037A83C
/* 8037A7D4  2C 03 00 00 */	cmpwi r3, 0
/* 8037A7D8  40 81 00 64 */	ble lbl_8037A83C
/* 8037A7DC  3B E3 FF FF */	addi r31, r3, -1
/* 8037A7E0  38 C0 00 02 */	li r6, 2
/* 8037A7E4  1C 64 00 14 */	mulli r3, r4, 0x14
/* 8037A7E8  48 00 00 38 */	b lbl_8037A820
lbl_8037A7EC:
/* 8037A7EC  7C BE 1A 14 */	add r5, r30, r3
/* 8037A7F0  39 05 FF FC */	addi r8, r5, -4
/* 8037A7F4  38 E5 00 10 */	addi r7, r5, 0x10
/* 8037A7F8  7C C9 03 A6 */	mtctr r6
lbl_8037A7FC:
/* 8037A7FC  80 A7 00 04 */	lwz r5, 4(r7)
/* 8037A800  84 07 00 08 */	lwzu r0, 8(r7)
/* 8037A804  90 A8 00 04 */	stw r5, 4(r8)
/* 8037A808  94 08 00 08 */	stwu r0, 8(r8)
/* 8037A80C  42 00 FF F0 */	bdnz lbl_8037A7FC
/* 8037A810  80 07 00 04 */	lwz r0, 4(r7)
/* 8037A814  38 84 00 01 */	addi r4, r4, 1
/* 8037A818  38 63 00 14 */	addi r3, r3, 0x14
/* 8037A81C  90 08 00 04 */	stw r0, 4(r8)
lbl_8037A820:
/* 8037A820  7C 04 F8 00 */	cmpw r4, r31
/* 8037A824  41 80 FF C8 */	blt lbl_8037A7EC
/* 8037A828  1C 1F 00 14 */	mulli r0, r31, 0x14
/* 8037A82C  38 80 00 14 */	li r4, 0x14
/* 8037A830  7C 7E 02 14 */	add r3, r30, r0
/* 8037A834  4B CE 28 35 */	bl bzero
/* 8037A838  93 FE 01 18 */	stw r31, 0x118(r30)
lbl_8037A83C:
/* 8037A83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A844  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037A848  7C 08 03 A6 */	mtlr r0
/* 8037A84C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A850  4E 80 00 20 */	blr 
