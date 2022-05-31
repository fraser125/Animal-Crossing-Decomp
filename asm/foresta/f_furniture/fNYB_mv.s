lbl_80635238:
/* 80635238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063523C  7C 08 02 A6 */	mflr r0
/* 80635240  3C 80 80 6E */	lis r4, int_nog_yubin_off_pal@ha /* 0x806D8960@ha */
/* 80635244  3C A0 80 6E */	lis r5, int_nog_yubin_on_pal@ha /* 0x806D8940@ha */
/* 80635248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063524C  7C 66 1B 78 */	mr r6, r3
/* 80635250  38 84 89 60 */	addi r4, r4, int_nog_yubin_off_pal@l /* 0x806D8960@l */
/* 80635254  38 A5 89 40 */	addi r5, r5, int_nog_yubin_on_pal@l /* 0x806D8940@l */
/* 80635258  80 63 08 50 */	lwz r3, 0x850(r3)
/* 8063525C  4B FF 96 29 */	bl func_8062E884
/* 80635260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635264  7C 08 03 A6 */	mtlr r0
/* 80635268  38 21 00 10 */	addi r1, r1, 0x10
/* 8063526C  4E 80 00 20 */	blr 
