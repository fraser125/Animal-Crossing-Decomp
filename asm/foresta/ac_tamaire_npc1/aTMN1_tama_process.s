lbl_8058A34C:
/* 8058A34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A350  7C 08 02 A6 */	mflr r0
/* 8058A354  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A35C  7C 9F 23 78 */	mr r31, r4
/* 8058A360  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A364  7C 7E 1B 78 */	mr r30, r3
/* 8058A368  80 63 08 A0 */	lwz r3, 0x8a0(r3)
/* 8058A36C  28 03 00 00 */	cmplwi r3, 0
/* 8058A370  40 82 00 5C */	bne lbl_8058A3CC
/* 8058A374  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058A378  A0 BE 00 06 */	lhz r5, 6(r30)
/* 8058A37C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058A380  3C 80 80 6C */	lis r4, table_507@ha /* 0x806C2110@ha */
/* 8058A384  3C 63 00 02 */	addis r3, r3, 2
/* 8058A388  3C A5 FF FF */	addis r5, r5, 0xffff
/* 8058A38C  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 8058A390  38 05 2F AC */	addi r0, r5, 0x2fac
/* 8058A394  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8058A398  38 84 21 10 */	addi r4, r4, table_507@l /* 0x806C2110@l */
/* 8058A39C  81 83 00 00 */	lwz r12, 0(r3)
/* 8058A3A0  68 00 00 01 */	xori r0, r0, 1
/* 8058A3A4  7C 64 00 AE */	lbzx r3, r4, r0
/* 8058A3A8  7F C5 F3 78 */	mr r5, r30
/* 8058A3AC  7F E6 FB 78 */	mr r6, r31
/* 8058A3B0  38 80 00 01 */	li r4, 1
/* 8058A3B4  38 E0 FF FF */	li r7, -1
/* 8058A3B8  39 00 00 00 */	li r8, 0
/* 8058A3BC  7D 89 03 A6 */	mtctr r12
/* 8058A3C0  4E 80 04 21 */	bctrl 
/* 8058A3C4  90 7E 08 A0 */	stw r3, 0x8a0(r30)
/* 8058A3C8  48 00 00 0C */	b lbl_8058A3D4
lbl_8058A3CC:
/* 8058A3CC  88 1E 09 B0 */	lbz r0, 0x9b0(r30)
/* 8058A3D0  90 03 01 C8 */	stw r0, 0x1c8(r3)
lbl_8058A3D4:
/* 8058A3D4  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 8058A3D8  28 03 00 00 */	cmplwi r3, 0
/* 8058A3DC  40 82 00 60 */	bne lbl_8058A43C
/* 8058A3E0  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8058A3E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058A3E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058A3EC  3C C0 80 6C */	lis r6, table_507@ha /* 0x806C2110@ha */
/* 8058A3F0  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8058A3F4  7F C5 F3 78 */	mr r5, r30
/* 8058A3F8  38 04 2F AC */	addi r0, r4, 0x2fac
/* 8058A3FC  3C 63 00 02 */	addis r3, r3, 2
/* 8058A400  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 8058A404  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8058A408  38 86 21 10 */	addi r4, r6, table_507@l /* 0x806C2110@l */
/* 8058A40C  7F E6 FB 78 */	mr r6, r31
/* 8058A410  68 00 00 01 */	xori r0, r0, 1
/* 8058A414  81 83 00 00 */	lwz r12, 0(r3)
/* 8058A418  7C 64 02 14 */	add r3, r4, r0
/* 8058A41C  38 80 00 01 */	li r4, 1
/* 8058A420  88 63 00 02 */	lbz r3, 2(r3)
/* 8058A424  38 E0 FF FF */	li r7, -1
/* 8058A428  39 00 00 00 */	li r8, 0
/* 8058A42C  7D 89 03 A6 */	mtctr r12
/* 8058A430  4E 80 04 21 */	bctrl 
/* 8058A434  90 7E 08 84 */	stw r3, 0x884(r30)
/* 8058A438  48 00 00 0C */	b lbl_8058A444
lbl_8058A43C:
/* 8058A43C  88 1E 09 AF */	lbz r0, 0x9af(r30)
/* 8058A440  90 03 01 C8 */	stw r0, 0x1c8(r3)
lbl_8058A444:
/* 8058A444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A44C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A450  7C 08 03 A6 */	mtlr r0
/* 8058A454  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A458  4E 80 00 20 */	blr 
