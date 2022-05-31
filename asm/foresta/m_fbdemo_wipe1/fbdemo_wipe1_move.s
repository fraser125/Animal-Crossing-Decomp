lbl_803A0E4C:
/* 803A0E4C  88 03 00 08 */	lbz r0, 8(r3)
/* 803A0E50  28 00 00 00 */	cmplwi r0, 0
/* 803A0E54  41 82 00 48 */	beq lbl_803A0E9C
/* 803A0E58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A0E5C  A0 C3 00 0E */	lhz r6, 0xe(r3)
/* 803A0E60  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803A0E64  3C A5 00 02 */	addis r5, r5, 2
/* 803A0E68  88 05 61 4E */	lbz r0, 0x614e(r5)
/* 803A0E6C  1C 00 00 03 */	mulli r0, r0, 3
/* 803A0E70  7C 00 23 D6 */	divw r0, r0, r4
/* 803A0E74  7C 06 02 14 */	add r0, r6, r0
/* 803A0E78  B0 03 00 0E */	sth r0, 0xe(r3)
/* 803A0E7C  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 803A0E80  28 00 02 64 */	cmplwi r0, 0x264
/* 803A0E84  4D 80 00 20 */	bltlr 
/* 803A0E88  38 80 02 64 */	li r4, 0x264
/* 803A0E8C  38 00 00 01 */	li r0, 1
/* 803A0E90  B0 83 00 0E */	sth r4, 0xe(r3)
/* 803A0E94  98 03 00 0A */	stb r0, 0xa(r3)
/* 803A0E98  4E 80 00 20 */	blr 
lbl_803A0E9C:
/* 803A0E9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A0EA0  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 803A0EA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803A0EA8  3C A5 00 02 */	addis r5, r5, 2
/* 803A0EAC  88 A5 61 4E */	lbz r5, 0x614e(r5)
/* 803A0EB0  1C A5 00 03 */	mulli r5, r5, 3
/* 803A0EB4  7C 85 23 D6 */	divw r4, r5, r4
/* 803A0EB8  7C 04 00 50 */	subf r0, r4, r0
/* 803A0EBC  B0 03 00 0E */	sth r0, 0xe(r3)
/* 803A0EC0  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 803A0EC4  28 00 01 4D */	cmplwi r0, 0x14d
/* 803A0EC8  4D 81 00 20 */	bgtlr 
/* 803A0ECC  38 80 01 4D */	li r4, 0x14d
/* 803A0ED0  38 00 00 01 */	li r0, 1
/* 803A0ED4  B0 83 00 0E */	sth r4, 0xe(r3)
/* 803A0ED8  98 03 00 0A */	stb r0, 0xa(r3)
/* 803A0EDC  4E 80 00 20 */	blr 
