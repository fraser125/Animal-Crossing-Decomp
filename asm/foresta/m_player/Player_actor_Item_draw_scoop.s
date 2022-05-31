lbl_804E29C4:
/* 804E29C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E29C8  7C 08 02 A6 */	mflr r0
/* 804E29CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E29D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E29D4  4B BB 84 FD */	bl func_8009AED0
/* 804E29D8  7C 7C 1B 78 */	mr r28, r3
/* 804E29DC  7C 9D 23 78 */	mr r29, r4
/* 804E29E0  4B F2 97 F5 */	bl Matrix_push
/* 804E29E4  3C 80 80 65 */	lis r4, lit_6577@ha /* 0x806480B0@ha */
/* 804E29E8  38 7C 10 04 */	addi r3, r28, 0x1004
/* 804E29EC  C0 24 80 B0 */	lfs f1, lit_6577@l(r4)  /* 0x806480B0@l */
/* 804E29F0  4B F2 AB 41 */	bl Matrix_Position_VecZ
/* 804E29F4  4B F2 98 21 */	bl Matrix_pull
/* 804E29F8  80 7C 0D F4 */	lwz r3, 0xdf4(r28)
/* 804E29FC  3C 00 DE 00 */	lis r0, 0xde00
/* 804E2A00  83 FD 00 00 */	lwz r31, 0(r29)
/* 804E2A04  54 63 10 3A */	slwi r3, r3, 2
/* 804E2A08  7C 7C 1A 14 */	add r3, r28, r3
/* 804E2A0C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804E2A10  80 63 0D E4 */	lwz r3, 0xde4(r3)
/* 804E2A14  7F DD F3 78 */	mr r29, r30
/* 804E2A18  90 1E 00 00 */	stw r0, 0(r30)
/* 804E2A1C  3B DE 00 08 */	addi r30, r30, 8
/* 804E2A20  4B EF 62 69 */	bl mPlib_Get_Item_DataPointer
/* 804E2A24  90 7D 00 04 */	stw r3, 4(r29)
/* 804E2A28  38 00 00 00 */	li r0, 0
/* 804E2A2C  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804E2A30  90 1C 0F 4C */	stw r0, 0xf4c(r28)
/* 804E2A34  90 1C 11 70 */	stw r0, 0x1170(r28)
/* 804E2A38  39 61 00 20 */	addi r11, r1, 0x20
/* 804E2A3C  4B BB 84 E1 */	bl func_8009AF1C
/* 804E2A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E2A44  7C 08 03 A6 */	mtlr r0
/* 804E2A48  38 21 00 20 */	addi r1, r1, 0x20
/* 804E2A4C  4E 80 00 20 */	blr 
