lbl_80558FE0:
/* 80558FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558FE4  7C 08 02 A6 */	mflr r0
/* 80558FE8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80558FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558FF0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80558FF4  3C A5 00 02 */	addis r5, r5, 2
/* 80558FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80558FFC  7C 9F 23 78 */	mr r31, r4
/* 80559000  93 C1 00 08 */	stw r30, 8(r1)
/* 80559004  7C 7E 1B 78 */	mr r30, r3
/* 80559008  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055900C  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80559010  7D 89 03 A6 */	mtctr r12
/* 80559014  4E 80 04 21 */	bctrl 
/* 80559018  7F C3 F3 78 */	mr r3, r30
/* 8055901C  7F E4 FB 78 */	mr r4, r31
/* 80559020  4B FF FD BD */	bl aMJN4_prenmi_draw
/* 80559024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055902C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80559030  7C 08 03 A6 */	mtlr r0
/* 80559034  38 21 00 10 */	addi r1, r1, 0x10
/* 80559038  4E 80 00 20 */	blr 
