lbl_80403E28:
/* 80403E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403E2C  7C 08 02 A6 */	mflr r0
/* 80403E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403E34  4B FF FF A1 */	bl mVibctl_check_title_demo
/* 80403E38  3C 60 81 1C */	lis r3, mVib_info@ha /* 0x811C51D0@ha */
/* 80403E3C  38 63 51 D0 */	addi r3, r3, mVib_info@l /* 0x811C51D0@l */
/* 80403E40  4B FF FE E1 */	bl mVibInfo_move
/* 80403E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403E48  7C 08 03 A6 */	mtlr r0
/* 80403E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80403E50  4E 80 00 20 */	blr 
