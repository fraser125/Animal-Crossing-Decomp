lbl_805F216C:
/* 805F216C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F2170  7C 08 02 A6 */	mflr r0
/* 805F2174  3C E0 80 6D */	lis r7, mTG_table_data@ha /* 0x806CF99C@ha */
/* 805F2178  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F217C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 805F2180  38 E7 F9 9C */	addi r7, r7, mTG_table_data@l /* 0x806CF99C@l */
/* 805F2184  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805F2188  7C 07 02 AE */	lhax r0, r7, r0
/* 805F218C  81 28 09 7C */	lwz r9, 0x97c(r8)
/* 805F2190  7C E6 03 D6 */	divw r7, r6, r0
/* 805F2194  81 09 00 00 */	lwz r8, 0(r9)
/* 805F2198  2C 08 00 03 */	cmpwi r8, 3
/* 805F219C  7C 07 01 D6 */	mullw r0, r7, r0
/* 805F21A0  7C C0 30 50 */	subf r6, r0, r6
/* 805F21A4  40 80 00 18 */	bge lbl_805F21BC
/* 805F21A8  38 08 00 01 */	addi r0, r8, 1
/* 805F21AC  90 09 00 00 */	stw r0, 0(r9)
/* 805F21B0  80 09 00 00 */	lwz r0, 0(r9)
/* 805F21B4  90 09 00 04 */	stw r0, 4(r9)
/* 805F21B8  4B FF FE 8D */	bl mTG_init_tag_data
lbl_805F21BC:
/* 805F21BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F21C0  7C 08 03 A6 */	mtlr r0
/* 805F21C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F21C8  4E 80 00 20 */	blr 
