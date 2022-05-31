lbl_8045A358:
/* 8045A358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A35C  7C 08 02 A6 */	mflr r0
/* 8045A360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A368  93 C1 00 08 */	stw r30, 8(r1)
/* 8045A36C  7C 7E 1B 78 */	mr r30, r3
/* 8045A370  83 E3 01 78 */	lwz r31, 0x178(r3)
/* 8045A374  2C 1F FF FF */	cmpwi r31, -1
/* 8045A378  41 82 00 88 */	beq lbl_8045A400
/* 8045A37C  7C 83 23 78 */	mr r3, r4
/* 8045A380  4B F2 50 79 */	bl Camera2NormalState_get
/* 8045A384  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8045A388  3C 80 80 68 */	lis r4, aMI_museum_indoor_cull_info@ha /* 0x8068632C@ha */
/* 8045A38C  38 BE 01 74 */	addi r5, r30, 0x174
/* 8045A390  38 84 63 2C */	addi r4, r4, aMI_museum_indoor_cull_info@l /* 0x8068632C@l */
/* 8045A394  7C 84 02 14 */	add r4, r4, r0
/* 8045A398  80 04 00 04 */	lwz r0, 4(r4)
/* 8045A39C  2C 00 00 01 */	cmpwi r0, 1
/* 8045A3A0  41 82 00 3C */	beq lbl_8045A3DC
/* 8045A3A4  40 80 00 5C */	bge lbl_8045A400
/* 8045A3A8  2C 00 00 00 */	cmpwi r0, 0
/* 8045A3AC  40 80 00 08 */	bge lbl_8045A3B4
/* 8045A3B0  48 00 00 50 */	b lbl_8045A400
lbl_8045A3B4:
/* 8045A3B4  2C 03 00 03 */	cmpwi r3, 3
/* 8045A3B8  41 82 00 0C */	beq lbl_8045A3C4
/* 8045A3BC  2C 03 00 07 */	cmpwi r3, 7
/* 8045A3C0  40 82 00 10 */	bne lbl_8045A3D0
lbl_8045A3C4:
/* 8045A3C4  7C A3 2B 78 */	mr r3, r5
/* 8045A3C8  4B FF FD 99 */	bl aMI_AlphaToOFF
/* 8045A3CC  48 00 00 34 */	b lbl_8045A400
lbl_8045A3D0:
/* 8045A3D0  7C A3 2B 78 */	mr r3, r5
/* 8045A3D4  4B FF FD 45 */	bl func_8045A118
/* 8045A3D8  48 00 00 28 */	b lbl_8045A400
lbl_8045A3DC:
/* 8045A3DC  2C 03 00 01 */	cmpwi r3, 1
/* 8045A3E0  41 82 00 0C */	beq lbl_8045A3EC
/* 8045A3E4  2C 03 00 05 */	cmpwi r3, 5
/* 8045A3E8  40 82 00 10 */	bne lbl_8045A3F8
lbl_8045A3EC:
/* 8045A3EC  7C A3 2B 78 */	mr r3, r5
/* 8045A3F0  4B FF FD 71 */	bl aMI_AlphaToOFF
/* 8045A3F4  48 00 00 0C */	b lbl_8045A400
lbl_8045A3F8:
/* 8045A3F8  7C A3 2B 78 */	mr r3, r5
/* 8045A3FC  4B FF FD 1D */	bl func_8045A118
lbl_8045A400:
/* 8045A400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A408  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045A40C  7C 08 03 A6 */	mtlr r0
/* 8045A410  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A414  4E 80 00 20 */	blr 
