lbl_80419788:
/* 80419788  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041978C  7C 08 02 A6 */	mflr r0
/* 80419790  38 80 00 09 */	li r4, 9
/* 80419794  38 A0 00 20 */	li r5, 0x20
/* 80419798  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041979C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804197A0  7C 7F 1B 78 */	mr r31, r3
/* 804197A4  38 61 00 1C */	addi r3, r1, 0x1c
/* 804197A8  4B FA 12 A1 */	bl mem_clear
/* 804197AC  88 BF 00 05 */	lbz r5, 5(r31)
/* 804197B0  38 61 00 1C */	addi r3, r1, 0x1c
/* 804197B4  38 80 00 09 */	li r4, 9
/* 804197B8  38 A5 06 6C */	addi r5, r5, 0x66c
/* 804197BC  4B FD 55 11 */	bl mString_Load_StringFromRom
/* 804197C0  38 81 00 1C */	addi r4, r1, 0x1c
/* 804197C4  38 60 00 00 */	li r3, 0
/* 804197C8  38 A0 00 09 */	li r5, 9
/* 804197CC  4B F9 81 8D */	bl mHandbill_Set_free_str
/* 804197D0  38 61 00 08 */	addi r3, r1, 8
/* 804197D4  38 80 00 04 */	li r4, 4
/* 804197D8  38 A0 00 20 */	li r5, 0x20
/* 804197DC  4B FA 12 6D */	bl mem_clear
/* 804197E0  88 BF 00 03 */	lbz r5, 3(r31)
/* 804197E4  38 61 00 08 */	addi r3, r1, 8
/* 804197E8  38 80 00 04 */	li r4, 4
/* 804197EC  38 A5 06 4D */	addi r5, r5, 0x64d
/* 804197F0  4B FD 54 DD */	bl mString_Load_StringFromRom
/* 804197F4  38 81 00 08 */	addi r4, r1, 8
/* 804197F8  38 60 00 01 */	li r3, 1
/* 804197FC  38 A0 00 04 */	li r5, 4
/* 80419800  4B F9 81 59 */	bl mHandbill_Set_free_str
/* 80419804  88 9F 00 02 */	lbz r4, 2(r31)
/* 80419808  38 61 00 0C */	addi r3, r1, 0xc
/* 8041980C  4B FD 57 35 */	bl mString_Load_HourStringFromRom
/* 80419810  7C 65 1B 78 */	mr r5, r3
/* 80419814  38 81 00 0C */	addi r4, r1, 0xc
/* 80419818  38 60 00 02 */	li r3, 2
/* 8041981C  4B F9 81 3D */	bl mHandbill_Set_free_str
/* 80419820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80419824  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80419828  7C 08 03 A6 */	mtlr r0
/* 8041982C  38 21 00 30 */	addi r1, r1, 0x30
/* 80419830  4E 80 00 20 */	blr 
