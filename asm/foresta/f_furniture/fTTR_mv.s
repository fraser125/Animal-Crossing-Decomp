lbl_8063D5F0:
/* 8063D5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D5F4  7C 08 02 A6 */	mflr r0
/* 8063D5F8  3C 80 80 6E */	lis r4, int_tak_tailor_off_pal@ha /* 0x806DE120@ha */
/* 8063D5FC  3C A0 80 6E */	lis r5, int_tak_tailor_on_pal@ha /* 0x806DE100@ha */
/* 8063D600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D604  7C 66 1B 78 */	mr r6, r3
/* 8063D608  38 84 E1 20 */	addi r4, r4, int_tak_tailor_off_pal@l /* 0x806DE120@l */
/* 8063D60C  38 A5 E1 00 */	addi r5, r5, int_tak_tailor_on_pal@l /* 0x806DE100@l */
/* 8063D610  80 63 08 50 */	lwz r3, 0x850(r3)
/* 8063D614  4B FF 12 71 */	bl func_8062E884
/* 8063D618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D61C  7C 08 03 A6 */	mtlr r0
/* 8063D620  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D624  4E 80 00 20 */	blr 
