lbl_805CA70C:
/* 805CA70C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CA710  7C 08 02 A6 */	mflr r0
/* 805CA714  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CA718  39 61 00 20 */	addi r11, r1, 0x20
/* 805CA71C  4B AD 07 B1 */	bl func_8009AECC
/* 805CA720  7C 9C 23 78 */	mr r28, r4
/* 805CA724  7C 7B 1B 78 */	mr r27, r3
/* 805CA728  80 64 00 30 */	lwz r3, 0x30(r4)
/* 805CA72C  7C BD 2B 78 */	mr r29, r5
/* 805CA730  28 03 00 00 */	cmplwi r3, 0
/* 805CA734  41 82 00 7C */	beq lbl_805CA7B0
/* 805CA738  80 03 00 08 */	lwz r0, 8(r3)
/* 805CA73C  28 00 00 00 */	cmplwi r0, 0
/* 805CA740  41 82 00 70 */	beq lbl_805CA7B0
/* 805CA744  83 DD 00 00 */	lwz r30, 0(r29)
/* 805CA748  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CA74C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CA750  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 805CA754  38 7F 00 08 */	addi r3, r31, 8
/* 805CA758  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805CA75C  90 1F 00 00 */	stw r0, 0(r31)
/* 805CA760  80 7D 00 00 */	lwz r3, 0(r29)
/* 805CA764  4B E4 2C 71 */	bl _Matrix_to_Mtx_new
/* 805CA768  90 7F 00 04 */	stw r3, 4(r31)
/* 805CA76C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CA770  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CA774  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 805CA778  38 7F 00 08 */	addi r3, r31, 8
/* 805CA77C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 805CA780  90 1F 00 00 */	stw r0, 0(r31)
/* 805CA784  80 7D 00 00 */	lwz r3, 0(r29)
/* 805CA788  4B E4 2C 4D */	bl _Matrix_to_Mtx_new
/* 805CA78C  90 7F 00 04 */	stw r3, 4(r31)
/* 805CA790  7F 63 DB 78 */	mr r3, r27
/* 805CA794  7F A5 EB 78 */	mr r5, r29
/* 805CA798  38 80 00 00 */	li r4, 0
/* 805CA79C  80 FC 00 30 */	lwz r7, 0x30(r28)
/* 805CA7A0  80 DB 08 5C */	lwz r6, 0x85c(r27)
/* 805CA7A4  81 87 00 08 */	lwz r12, 8(r7)
/* 805CA7A8  7D 89 03 A6 */	mtctr r12
/* 805CA7AC  4E 80 04 21 */	bctrl 
lbl_805CA7B0:
/* 805CA7B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CA7B4  4B AD 07 65 */	bl func_8009AF18
/* 805CA7B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CA7BC  7C 08 03 A6 */	mtlr r0
/* 805CA7C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CA7C4  4E 80 00 20 */	blr 
