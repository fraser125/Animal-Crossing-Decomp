lbl_8057CA40:
/* 8057CA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CA44  7C 08 02 A6 */	mflr r0
/* 8057CA48  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057CA4C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057CA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CA54  3C A5 00 02 */	addis r5, r5, 2
/* 8057CA58  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057CA5C  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8057CA60  7D 89 03 A6 */	mtctr r12
/* 8057CA64  4E 80 04 21 */	bctrl 
/* 8057CA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CA6C  7C 08 03 A6 */	mtlr r0
/* 8057CA70  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CA74  4E 80 00 20 */	blr 