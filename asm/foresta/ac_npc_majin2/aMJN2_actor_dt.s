lbl_805572EC:
/* 805572EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805572F0  7C 08 02 A6 */	mflr r0
/* 805572F4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805572F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805572FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557300  3C A5 00 02 */	addis r5, r5, 2
/* 80557304  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80557308  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8055730C  7D 89 03 A6 */	mtctr r12
/* 80557310  4E 80 04 21 */	bctrl 
/* 80557314  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80557318  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8055731C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80557320  38 60 00 5D */	li r3, 0x5d
/* 80557324  3C A4 00 02 */	addis r5, r4, 2
/* 80557328  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8055732C  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 80557330  81 85 00 04 */	lwz r12, 4(r5)
/* 80557334  7D 89 03 A6 */	mtctr r12
/* 80557338  4E 80 04 21 */	bctrl 
/* 8055733C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80557340  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80557344  3C 63 00 02 */	addis r3, r3, 2
/* 80557348  80 63 60 B0 */	lwz r3, 0x60b0(r3)
/* 8055734C  28 03 00 00 */	cmplwi r3, 0
/* 80557350  41 82 00 28 */	beq lbl_80557378
/* 80557354  80 03 00 04 */	lwz r0, 4(r3)
/* 80557358  2C 00 00 05 */	cmpwi r0, 5
/* 8055735C  40 82 00 1C */	bne lbl_80557378
/* 80557360  80 63 00 00 */	lwz r3, 0(r3)
/* 80557364  28 03 00 00 */	cmplwi r3, 0
/* 80557368  41 82 00 10 */	beq lbl_80557378
/* 8055736C  38 00 00 00 */	li r0, 0
/* 80557370  90 03 01 80 */	stw r0, 0x180(r3)
/* 80557374  B0 03 01 7C */	sth r0, 0x17c(r3)
lbl_80557378:
/* 80557378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055737C  7C 08 03 A6 */	mtlr r0
/* 80557380  38 21 00 10 */	addi r1, r1, 0x10
/* 80557384  4E 80 00 20 */	blr 
