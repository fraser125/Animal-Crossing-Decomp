lbl_8042D3B8:
/* 8042D3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D3BC  7C 08 02 A6 */	mflr r0
/* 8042D3C0  3C 80 80 68 */	lis r4, part_tbl@ha /* 0x806849EC@ha */
/* 8042D3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D3C8  38 A4 49 EC */	addi r5, r4, part_tbl@l /* 0x806849EC@l */
/* 8042D3CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D3D0  7C 7F 1B 78 */	mr r31, r3
/* 8042D3D4  38 7F 01 7C */	addi r3, r31, 0x17c
/* 8042D3D8  38 9F 02 48 */	addi r4, r31, 0x248
/* 8042D3DC  4B F4 4C 25 */	bl cKF_SkeletonInfo_R_combine_play
/* 8042D3E0  90 7F 01 78 */	stw r3, 0x178(r31)
/* 8042D3E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D3EC  7C 08 03 A6 */	mtlr r0
/* 8042D3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D3F4  4E 80 00 20 */	blr 
