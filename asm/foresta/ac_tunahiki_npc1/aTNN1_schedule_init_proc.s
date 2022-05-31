lbl_8058FEBC:
/* 8058FEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FEC0  7C 08 02 A6 */	mflr r0
/* 8058FEC4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8058FEC8  3C A0 80 59 */	lis r5, aTNN1_think_proc@ha /* 0x8058FE7C@ha */
/* 8058FECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FED0  38 05 FE 7C */	addi r0, r5, aTNN1_think_proc@l /* 0x8058FE7C@l */
/* 8058FED4  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8058FED8  38 A0 00 09 */	li r5, 9
/* 8058FEDC  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8058FEE0  3C E6 00 02 */	addis r7, r6, 2
/* 8058FEE4  38 C0 00 00 */	li r6, 0
/* 8058FEE8  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058FEEC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058FEF0  7D 89 03 A6 */	mtctr r12
/* 8058FEF4  4E 80 04 21 */	bctrl 
/* 8058FEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FEFC  7C 08 03 A6 */	mtlr r0
/* 8058FF00  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FF04  4E 80 00 20 */	blr 
