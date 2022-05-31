lbl_806350B4:
/* 806350B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806350B8  7C 08 02 A6 */	mflr r0
/* 806350BC  3C 80 80 6E */	lis r4, int_nog_yamishop_off_pal@ha /* 0x806D88A0@ha */
/* 806350C0  3C A0 80 6E */	lis r5, int_nog_yamishop_on_pal@ha /* 0x806D88C0@ha */
/* 806350C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806350C8  7C 66 1B 78 */	mr r6, r3
/* 806350CC  38 84 88 A0 */	addi r4, r4, int_nog_yamishop_off_pal@l /* 0x806D88A0@l */
/* 806350D0  38 A5 88 C0 */	addi r5, r5, int_nog_yamishop_on_pal@l /* 0x806D88C0@l */
/* 806350D4  80 63 08 50 */	lwz r3, 0x850(r3)
/* 806350D8  4B FF 97 AD */	bl func_8062E884
/* 806350DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806350E0  7C 08 03 A6 */	mtlr r0
/* 806350E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806350E8  4E 80 00 20 */	blr 
