lbl_8052C880:
/* 8052C880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C884  7C 08 02 A6 */	mflr r0
/* 8052C888  2C 04 00 15 */	cmpwi r4, 0x15
/* 8052C88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C890  41 82 00 4C */	beq lbl_8052C8DC
/* 8052C894  40 80 00 7C */	bge lbl_8052C910
/* 8052C898  2C 04 00 14 */	cmpwi r4, 0x14
/* 8052C89C  40 80 00 08 */	bge lbl_8052C8A4
/* 8052C8A0  48 00 00 70 */	b lbl_8052C910
lbl_8052C8A4:
/* 8052C8A4  A8 83 09 76 */	lha r4, 0x976(r3)
/* 8052C8A8  2C 04 FF FF */	cmpwi r4, -1
/* 8052C8AC  41 82 00 08 */	beq lbl_8052C8B4
/* 8052C8B0  48 00 00 60 */	b lbl_8052C910
lbl_8052C8B4:
/* 8052C8B4  88 03 09 7C */	lbz r0, 0x97c(r3)
/* 8052C8B8  2C 00 00 FF */	cmpwi r0, 0xff
/* 8052C8BC  40 82 00 0C */	bne lbl_8052C8C8
/* 8052C8C0  4B FF FF 81 */	bl func_8052C840
/* 8052C8C4  7C 60 1B 78 */	mr r0, r3
lbl_8052C8C8:
/* 8052C8C8  3C 60 80 6A */	lis r3, talk_turn_def_anime@ha /* 0x806A1D34@ha */
/* 8052C8CC  54 00 10 3A */	slwi r0, r0, 2
/* 8052C8D0  38 63 1D 34 */	addi r3, r3, talk_turn_def_anime@l /* 0x806A1D34@l */
/* 8052C8D4  7C 83 00 2E */	lwzx r4, r3, r0
/* 8052C8D8  48 00 00 38 */	b lbl_8052C910
lbl_8052C8DC:
/* 8052C8DC  A8 83 09 74 */	lha r4, 0x974(r3)
/* 8052C8E0  2C 04 FF FF */	cmpwi r4, -1
/* 8052C8E4  41 82 00 08 */	beq lbl_8052C8EC
/* 8052C8E8  48 00 00 28 */	b lbl_8052C910
lbl_8052C8EC:
/* 8052C8EC  88 03 09 7C */	lbz r0, 0x97c(r3)
/* 8052C8F0  2C 00 00 FF */	cmpwi r0, 0xff
/* 8052C8F4  40 82 00 0C */	bne lbl_8052C900
/* 8052C8F8  4B FF FF 49 */	bl func_8052C840
/* 8052C8FC  7C 60 1B 78 */	mr r0, r3
lbl_8052C900:
/* 8052C900  3C 60 80 6A */	lis r3, talk_def_anime@ha /* 0x806A1D58@ha */
/* 8052C904  54 00 10 3A */	slwi r0, r0, 2
/* 8052C908  38 63 1D 58 */	addi r3, r3, talk_def_anime@l /* 0x806A1D58@l */
/* 8052C90C  7C 83 00 2E */	lwzx r4, r3, r0
lbl_8052C910:
/* 8052C910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C914  7C 83 23 78 */	mr r3, r4
/* 8052C918  7C 08 03 A6 */	mtlr r0
/* 8052C91C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C920  4E 80 00 20 */	blr 
