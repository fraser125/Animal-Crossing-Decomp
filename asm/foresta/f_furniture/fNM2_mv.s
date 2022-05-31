lbl_80633708:
/* 80633708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063370C  7C 08 02 A6 */	mflr r0
/* 80633710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80633718  7C 7F 1B 78 */	mr r31, r3
/* 8063371C  4B FF FE B9 */	bl func_806335D4
/* 80633720  3C A0 80 6D */	lis r5, data_806D4C40@ha /* 0x806D4C40@ha */
/* 80633724  3C 80 80 6D */	lis r4, fFTR_myhome_on_pal_table@ha /* 0x806D4DC0@ha */
/* 80633728  54 67 28 34 */	slwi r7, r3, 5
/* 8063372C  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80633730  38 A5 4C 40 */	addi r5, r5, data_806D4C40@l /* 0x806D4C40@l */
/* 80633734  38 04 4D C0 */	addi r0, r4, fFTR_myhome_on_pal_table@l /* 0x806D4DC0@l */
/* 80633738  7F E6 FB 78 */	mr r6, r31
/* 8063373C  7C 85 3A 14 */	add r4, r5, r7
/* 80633740  7C A0 3A 14 */	add r5, r0, r7
/* 80633744  4B FF B1 41 */	bl func_8062E884
/* 80633748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063374C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633750  7C 08 03 A6 */	mtlr r0
/* 80633754  38 21 00 10 */	addi r1, r1, 0x10
/* 80633758  4E 80 00 20 */	blr 
