lbl_8055A01C:
/* 8055A01C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055A020  7C 08 02 A6 */	mflr r0
/* 8055A024  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055A028  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8055A02C  88 03 09 A5 */	lbz r0, 0x9a5(r3)
/* 8055A030  3C 60 80 6A */	lis r3, sale_zone@ha /* 0x806A70B0@ha */
/* 8055A034  80 A4 00 00 */	lwz r5, 0(r4)
/* 8055A038  38 E3 70 B0 */	addi r7, r3, sale_zone@l /* 0x806A70B0@l */
/* 8055A03C  54 08 10 3A */	slwi r8, r0, 2
/* 8055A040  80 C4 00 04 */	lwz r6, 4(r4)
/* 8055A044  80 04 00 08 */	lwz r0, 8(r4)
/* 8055A048  38 61 00 0C */	addi r3, r1, 0xc
/* 8055A04C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8055A050  38 81 00 08 */	addi r4, r1, 8
/* 8055A054  7F E7 40 2E */	lwzx r31, r7, r8
/* 8055A058  38 A1 00 10 */	addi r5, r1, 0x10
/* 8055A05C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8055A060  90 01 00 18 */	stw r0, 0x18(r1)
/* 8055A064  4B E4 B3 05 */	bl mFI_Wpos2UtNum
/* 8055A068  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8055A06C  80 61 00 08 */	lwz r3, 8(r1)
/* 8055A070  34 84 FF FF */	addic. r4, r4, -1
/* 8055A074  38 03 FF FD */	addi r0, r3, -3
/* 8055A078  90 01 00 08 */	stw r0, 8(r1)
/* 8055A07C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8055A080  40 80 00 10 */	bge lbl_8055A090
/* 8055A084  38 00 00 00 */	li r0, 0
/* 8055A088  90 01 00 0C */	stw r0, 0xc(r1)
/* 8055A08C  48 00 00 14 */	b lbl_8055A0A0
lbl_8055A090:
/* 8055A090  2C 04 00 0A */	cmpwi r4, 0xa
/* 8055A094  41 80 00 0C */	blt lbl_8055A0A0
/* 8055A098  38 00 00 09 */	li r0, 9
/* 8055A09C  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8055A0A0:
/* 8055A0A0  80 01 00 08 */	lwz r0, 8(r1)
/* 8055A0A4  2C 00 00 00 */	cmpwi r0, 0
/* 8055A0A8  40 80 00 10 */	bge lbl_8055A0B8
/* 8055A0AC  38 00 00 00 */	li r0, 0
/* 8055A0B0  90 01 00 08 */	stw r0, 8(r1)
/* 8055A0B4  48 00 00 14 */	b lbl_8055A0C8
lbl_8055A0B8:
/* 8055A0B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8055A0BC  41 80 00 0C */	blt lbl_8055A0C8
/* 8055A0C0  38 00 00 09 */	li r0, 9
/* 8055A0C4  90 01 00 08 */	stw r0, 8(r1)
lbl_8055A0C8:
/* 8055A0C8  80 61 00 08 */	lwz r3, 8(r1)
/* 8055A0CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8055A0D0  54 63 20 36 */	slwi r3, r3, 4
/* 8055A0D4  7C 03 02 14 */	add r0, r3, r0
/* 8055A0D8  7C 7F 00 AE */	lbzx r3, r31, r0
/* 8055A0DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8055A0E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055A0E4  7C 08 03 A6 */	mtlr r0
/* 8055A0E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8055A0EC  4E 80 00 20 */	blr 
