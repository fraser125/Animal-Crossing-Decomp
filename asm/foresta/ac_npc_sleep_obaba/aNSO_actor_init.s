lbl_8057E4EC:
/* 8057E4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E4F0  7C 08 02 A6 */	mflr r0
/* 8057E4F4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057E4F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057E4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E500  3C A5 00 02 */	addis r5, r5, 2
/* 8057E504  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057E508  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8057E50C  7D 89 03 A6 */	mtctr r12
/* 8057E510  4E 80 04 21 */	bctrl 
/* 8057E514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E518  7C 08 03 A6 */	mtlr r0
/* 8057E51C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E520  4E 80 00 20 */	blr 
