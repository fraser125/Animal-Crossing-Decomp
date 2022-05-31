lbl_804ECABC:
/* 804ECABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECAC0  7C 08 02 A6 */	mflr r0
/* 804ECAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECAC8  38 81 00 08 */	addi r4, r1, 8
/* 804ECACC  4B FE 9A BD */	bl Player_actor_CulcAnimation_Base2
/* 804ECAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECAD4  7C 08 03 A6 */	mtlr r0
/* 804ECAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804ECADC  4E 80 00 20 */	blr 
