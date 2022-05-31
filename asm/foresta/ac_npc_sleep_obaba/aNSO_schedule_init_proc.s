lbl_8057E848:
/* 8057E848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E84C  7C 08 02 A6 */	mflr r0
/* 8057E850  3C C0 80 58 */	lis r6, aNSO_think_proc@ha /* 0x8057E814@ha */
/* 8057E854  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057E858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E85C  38 C6 E8 14 */	addi r6, r6, aNSO_think_proc@l /* 0x8057E814@l */
/* 8057E860  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057E864  38 00 00 00 */	li r0, 0
/* 8057E868  90 C3 07 D4 */	stw r6, 0x7d4(r3)
/* 8057E86C  3C E5 00 02 */	addis r7, r5, 2
/* 8057E870  38 A0 00 06 */	li r5, 6
/* 8057E874  38 C0 00 00 */	li r6, 0
/* 8057E878  98 03 08 31 */	stb r0, 0x831(r3)
/* 8057E87C  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8057E880  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8057E884  7D 89 03 A6 */	mtctr r12
/* 8057E888  4E 80 04 21 */	bctrl 
/* 8057E88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E890  7C 08 03 A6 */	mtlr r0
/* 8057E894  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E898  4E 80 00 20 */	blr 
