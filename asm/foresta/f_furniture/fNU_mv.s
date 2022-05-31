lbl_80634F30:
/* 80634F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634F34  7C 08 02 A6 */	mflr r0
/* 80634F38  3C 80 80 6E */	lis r4, int_nog_uranai_off_pal@ha /* 0x806D8800@ha */
/* 80634F3C  3C A0 80 6E */	lis r5, int_nog_uranai_on_pal@ha /* 0x806D8820@ha */
/* 80634F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634F44  7C 66 1B 78 */	mr r6, r3
/* 80634F48  38 84 88 00 */	addi r4, r4, int_nog_uranai_off_pal@l /* 0x806D8800@l */
/* 80634F4C  38 A5 88 20 */	addi r5, r5, int_nog_uranai_on_pal@l /* 0x806D8820@l */
/* 80634F50  80 63 08 50 */	lwz r3, 0x850(r3)
/* 80634F54  4B FF 99 31 */	bl func_8062E884
/* 80634F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634F5C  7C 08 03 A6 */	mtlr r0
/* 80634F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80634F64  4E 80 00 20 */	blr 
