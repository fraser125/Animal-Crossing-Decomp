lbl_8053D708:
/* 8053D708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D70C  7C 08 02 A6 */	mflr r0
/* 8053D710  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D718  7C 7F 1B 78 */	mr r31, r3
/* 8053D71C  38 60 00 07 */	li r3, 7
/* 8053D720  93 C1 00 08 */	stw r30, 8(r1)
/* 8053D724  7C 9E 23 78 */	mr r30, r4
/* 8053D728  7F E4 FB 78 */	mr r4, r31
/* 8053D72C  4B E5 CB 39 */	bl mDemo_Check
/* 8053D730  2C 03 00 01 */	cmpwi r3, 1
/* 8053D734  40 82 00 0C */	bne lbl_8053D740
/* 8053D738  38 00 00 00 */	li r0, 0
/* 8053D73C  98 1F 07 C9 */	stb r0, 0x7c9(r31)
lbl_8053D740:
/* 8053D740  88 1F 07 C9 */	lbz r0, 0x7c9(r31)
/* 8053D744  2C 00 00 01 */	cmpwi r0, 1
/* 8053D748  41 82 00 30 */	beq lbl_8053D778
/* 8053D74C  40 80 00 10 */	bge lbl_8053D75C
/* 8053D750  2C 00 00 00 */	cmpwi r0, 0
/* 8053D754  40 80 00 14 */	bge lbl_8053D768
/* 8053D758  48 00 00 78 */	b lbl_8053D7D0
lbl_8053D75C:
/* 8053D75C  2C 00 00 03 */	cmpwi r0, 3
/* 8053D760  40 80 00 70 */	bge lbl_8053D7D0
/* 8053D764  48 00 00 44 */	b lbl_8053D7A8
lbl_8053D768:
/* 8053D768  7F E3 FB 78 */	mr r3, r31
/* 8053D76C  7F C4 F3 78 */	mr r4, r30
/* 8053D770  4B FF FD D9 */	bl aNPC_normal_talk_request
/* 8053D774  48 00 00 5C */	b lbl_8053D7D0
lbl_8053D778:
/* 8053D778  7F E3 FB 78 */	mr r3, r31
/* 8053D77C  4B FF FE 9D */	bl aNPC_force_talk_request
/* 8053D780  2C 03 00 00 */	cmpwi r3, 0
/* 8053D784  40 82 00 4C */	bne lbl_8053D7D0
/* 8053D788  7F E3 FB 78 */	mr r3, r31
/* 8053D78C  7F C4 F3 78 */	mr r4, r30
/* 8053D790  4B FF FD B9 */	bl aNPC_normal_talk_request
/* 8053D794  2C 03 00 01 */	cmpwi r3, 1
/* 8053D798  40 82 00 38 */	bne lbl_8053D7D0
/* 8053D79C  38 00 00 00 */	li r0, 0
/* 8053D7A0  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8053D7A4  48 00 00 2C */	b lbl_8053D7D0
lbl_8053D7A8:
/* 8053D7A8  7F E4 FB 78 */	mr r4, r31
/* 8053D7AC  38 60 00 08 */	li r3, 8
/* 8053D7B0  4B E5 CA B5 */	bl mDemo_Check
/* 8053D7B4  2C 03 00 01 */	cmpwi r3, 1
/* 8053D7B8  40 82 00 18 */	bne lbl_8053D7D0
/* 8053D7BC  7F E3 FB 78 */	mr r3, r31
/* 8053D7C0  7F C4 F3 78 */	mr r4, r30
/* 8053D7C4  4B FF FB 31 */	bl aNPC_setup_talk_start
/* 8053D7C8  38 00 00 03 */	li r0, 3
/* 8053D7CC  98 1F 07 C9 */	stb r0, 0x7c9(r31)
lbl_8053D7D0:
/* 8053D7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D7D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053D7DC  7C 08 03 A6 */	mtlr r0
/* 8053D7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D7E4  4E 80 00 20 */	blr 
