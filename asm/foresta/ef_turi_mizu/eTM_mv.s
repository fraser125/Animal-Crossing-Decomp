lbl_806248A0:
/* 806248A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806248A4  7C 08 02 A6 */	mflr r0
/* 806248A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806248AC  39 61 00 40 */	addi r11, r1, 0x40
/* 806248B0  4B A7 66 15 */	bl func_8009AEC4
/* 806248B4  80 04 20 90 */	lwz r0, 0x2090(r4)
/* 806248B8  7C 7C 1B 78 */	mr r28, r3
/* 806248BC  A8 63 00 00 */	lha r3, 0(r3)
/* 806248C0  7C 9D 23 78 */	mr r29, r4
/* 806248C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806248C8  3B C0 00 04 */	li r30, 4
/* 806248CC  20 03 00 10 */	subfic r0, r3, 0x10
/* 806248D0  7C 1F 07 34 */	extsh r31, r0
/* 806248D4  40 82 01 3C */	bne lbl_80624A10
/* 806248D8  A8 1C 00 06 */	lha r0, 6(r28)
/* 806248DC  2C 00 00 02 */	cmpwi r0, 2
/* 806248E0  41 82 00 24 */	beq lbl_80624904
/* 806248E4  40 80 00 14 */	bge lbl_806248F8
/* 806248E8  2C 00 00 00 */	cmpwi r0, 0
/* 806248EC  41 82 00 18 */	beq lbl_80624904
/* 806248F0  40 80 00 74 */	bge lbl_80624964
/* 806248F4  48 00 01 1C */	b lbl_80624A10
lbl_806248F8:
/* 806248F8  2C 00 00 09 */	cmpwi r0, 9
/* 806248FC  40 80 01 14 */	bge lbl_80624A10
/* 80624900  48 00 00 64 */	b lbl_80624964
lbl_80624904:
/* 80624904  2C 03 00 01 */	cmpwi r3, 1
/* 80624908  40 82 01 08 */	bne lbl_80624A10
/* 8062490C  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80624910  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80624914  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80624918  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062491C  3C 63 00 02 */	addis r3, r3, 2
/* 80624920  7F A7 EB 78 */	mr r7, r29
/* 80624924  90 81 00 14 */	stw r4, 0x14(r1)
/* 80624928  38 81 00 14 */	addi r4, r1, 0x14
/* 8062492C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 80624930  38 60 00 45 */	li r3, 0x45
/* 80624934  90 01 00 18 */	stw r0, 0x18(r1)
/* 80624938  38 A0 00 01 */	li r5, 1
/* 8062493C  39 00 00 00 */	li r8, 0
/* 80624940  39 20 00 02 */	li r9, 2
/* 80624944  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80624948  39 40 00 00 */	li r10, 0
/* 8062494C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80624950  81 86 00 00 */	lwz r12, 0(r6)
/* 80624954  A8 DC 00 56 */	lha r6, 0x56(r28)
/* 80624958  7D 89 03 A6 */	mtctr r12
/* 8062495C  4E 80 04 21 */	bctrl 
/* 80624960  48 00 00 B0 */	b lbl_80624A10
lbl_80624964:
/* 80624964  2C 00 00 04 */	cmpwi r0, 4
/* 80624968  40 82 00 0C */	bne lbl_80624974
/* 8062496C  3B C0 00 03 */	li r30, 3
/* 80624970  48 00 00 18 */	b lbl_80624988
lbl_80624974:
/* 80624974  2C 00 00 07 */	cmpwi r0, 7
/* 80624978  41 82 00 0C */	beq lbl_80624984
/* 8062497C  2C 00 00 08 */	cmpwi r0, 8
/* 80624980  40 82 00 08 */	bne lbl_80624988
lbl_80624984:
/* 80624984  3B C0 00 02 */	li r30, 2
lbl_80624988:
/* 80624988  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062498C  7F DB 07 34 */	extsh r27, r30
/* 80624990  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80624994  3B 20 00 00 */	li r25, 0
/* 80624998  3F 43 00 02 */	addis r26, r3, 2
/* 8062499C  48 00 00 68 */	b lbl_80624A04
lbl_806249A0:
/* 806249A0  7F 20 07 34 */	extsh r0, r25
/* 806249A4  54 03 08 3C */	slwi r3, r0, 1
/* 806249A8  38 03 00 4C */	addi r0, r3, 0x4c
/* 806249AC  7C 1C 02 AE */	lhax r0, r28, r0
/* 806249B0  7C 00 F8 00 */	cmpw r0, r31
/* 806249B4  40 82 00 4C */	bne lbl_80624A00
/* 806249B8  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 806249BC  7F A7 EB 78 */	mr r7, r29
/* 806249C0  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 806249C4  7F 29 CB 78 */	mr r9, r25
/* 806249C8  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 806249CC  7F CA F3 78 */	mr r10, r30
/* 806249D0  90 61 00 08 */	stw r3, 8(r1)
/* 806249D4  38 81 00 08 */	addi r4, r1, 8
/* 806249D8  38 60 00 49 */	li r3, 0x49
/* 806249DC  38 A0 00 01 */	li r5, 1
/* 806249E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806249E4  38 C0 00 00 */	li r6, 0
/* 806249E8  39 00 00 00 */	li r8, 0
/* 806249EC  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 806249F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806249F4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806249F8  7D 89 03 A6 */	mtctr r12
/* 806249FC  4E 80 04 21 */	bctrl 
lbl_80624A00:
/* 80624A00  3B 39 00 01 */	addi r25, r25, 1
lbl_80624A04:
/* 80624A04  7F 20 07 34 */	extsh r0, r25
/* 80624A08  7C 00 D8 00 */	cmpw r0, r27
/* 80624A0C  41 80 FF 94 */	blt lbl_806249A0
lbl_80624A10:
/* 80624A10  39 61 00 40 */	addi r11, r1, 0x40
/* 80624A14  4B A7 64 FD */	bl func_8009AF10
/* 80624A18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80624A1C  7C 08 03 A6 */	mtlr r0
/* 80624A20  38 21 00 40 */	addi r1, r1, 0x40
/* 80624A24  4E 80 00 20 */	blr 
