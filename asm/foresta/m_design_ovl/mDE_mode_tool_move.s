lbl_805D4E10:
/* 805D4E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D4E14  7C 08 02 A6 */	mflr r0
/* 805D4E18  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D4E1C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 805D4E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D4E24  38 A5 52 F0 */	addi r5, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 805D4E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D4E2C  7C 7F 1B 78 */	mr r31, r3
/* 805D4E30  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 805D4E34  80 A5 00 00 */	lwz r5, 0(r5)
/* 805D4E38  C0 05 00 B0 */	lfs f0, 0xb0(r5)
/* 805D4E3C  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D4E40  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4E44  A8 63 16 B8 */	lha r3, 0x16b8(r3)
/* 805D4E48  7C 60 07 35 */	extsh. r0, r3
/* 805D4E4C  41 82 00 0C */	beq lbl_805D4E58
/* 805D4E50  90 7F 06 C4 */	stw r3, 0x6c4(r31)
/* 805D4E54  48 00 00 0C */	b lbl_805D4E60
lbl_805D4E58:
/* 805D4E58  38 00 00 18 */	li r0, 0x18
/* 805D4E5C  90 1F 06 C4 */	stw r0, 0x6c4(r31)
lbl_805D4E60:
/* 805D4E60  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4E64  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4E68  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4E6C  A8 63 16 BA */	lha r3, 0x16ba(r3)
/* 805D4E70  7C 60 07 35 */	extsh. r0, r3
/* 805D4E74  41 82 00 0C */	beq lbl_805D4E80
/* 805D4E78  90 7F 06 BC */	stw r3, 0x6bc(r31)
/* 805D4E7C  48 00 00 0C */	b lbl_805D4E88
lbl_805D4E80:
/* 805D4E80  38 00 00 08 */	li r0, 8
/* 805D4E84  90 1F 06 BC */	stw r0, 0x6bc(r31)
lbl_805D4E88:
/* 805D4E88  7F E3 FB 78 */	mr r3, r31
/* 805D4E8C  4B FF C5 39 */	bl mDE_judge_stick_nuetral
/* 805D4E90  7F E3 FB 78 */	mr r3, r31
/* 805D4E94  4B FF C4 E9 */	bl mDE_judge_stick_full
/* 805D4E98  7F E3 FB 78 */	mr r3, r31
/* 805D4E9C  4B FF C4 2D */	bl mDE_judge_stick
/* 805D4EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D4EA4  41 82 01 B8 */	beq lbl_805D505C
/* 805D4EA8  88 1F 06 9F */	lbz r0, 0x69f(r31)
/* 805D4EAC  28 00 00 00 */	cmplwi r0, 0
/* 805D4EB0  40 82 00 30 */	bne lbl_805D4EE0
/* 805D4EB4  7F E3 FB 78 */	mr r3, r31
/* 805D4EB8  38 80 00 00 */	li r4, 0
/* 805D4EBC  38 A0 00 03 */	li r5, 3
/* 805D4EC0  38 C0 00 00 */	li r6, 0
/* 805D4EC4  38 E0 00 06 */	li r7, 6
/* 805D4EC8  4B FF E9 8D */	bl mDE_mode_tool_check
/* 805D4ECC  2C 03 00 00 */	cmpwi r3, 0
/* 805D4ED0  41 82 01 8C */	beq lbl_805D505C
/* 805D4ED4  38 60 00 32 */	li r3, 0x32
/* 805D4ED8  48 05 8E 2D */	bl sAdo_SysTrgStart
/* 805D4EDC  48 00 01 80 */	b lbl_805D505C
lbl_805D4EE0:
/* 805D4EE0  28 00 00 01 */	cmplwi r0, 1
/* 805D4EE4  40 82 00 30 */	bne lbl_805D4F14
/* 805D4EE8  7F E3 FB 78 */	mr r3, r31
/* 805D4EEC  38 80 00 00 */	li r4, 0
/* 805D4EF0  38 A0 00 06 */	li r5, 6
/* 805D4EF4  38 C0 00 03 */	li r6, 3
/* 805D4EF8  38 E0 00 05 */	li r7, 5
/* 805D4EFC  4B FF E9 59 */	bl mDE_mode_tool_check
/* 805D4F00  2C 03 00 00 */	cmpwi r3, 0
/* 805D4F04  41 82 01 58 */	beq lbl_805D505C
/* 805D4F08  38 60 00 32 */	li r3, 0x32
/* 805D4F0C  48 05 8D F9 */	bl sAdo_SysTrgStart
/* 805D4F10  48 00 01 4C */	b lbl_805D505C
lbl_805D4F14:
/* 805D4F14  28 00 00 02 */	cmplwi r0, 2
/* 805D4F18  40 82 00 88 */	bne lbl_805D4FA0
/* 805D4F1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D4F20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D4F24  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D4F28  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D4F2C  41 82 00 1C */	beq lbl_805D4F48
/* 805D4F30  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4F34  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4F38  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4F3C  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D4F40  2C 00 00 00 */	cmpwi r0, 0
/* 805D4F44  41 82 00 30 */	beq lbl_805D4F74
lbl_805D4F48:
/* 805D4F48  7F E3 FB 78 */	mr r3, r31
/* 805D4F4C  38 80 00 00 */	li r4, 0
/* 805D4F50  38 A0 00 05 */	li r5, 5
/* 805D4F54  38 C0 00 06 */	li r6, 6
/* 805D4F58  38 E0 00 05 */	li r7, 5
/* 805D4F5C  4B FF E8 F9 */	bl mDE_mode_tool_check
/* 805D4F60  2C 03 00 00 */	cmpwi r3, 0
/* 805D4F64  41 82 00 F8 */	beq lbl_805D505C
/* 805D4F68  38 60 00 32 */	li r3, 0x32
/* 805D4F6C  48 05 8D 99 */	bl sAdo_SysTrgStart
/* 805D4F70  48 00 00 EC */	b lbl_805D505C
lbl_805D4F74:
/* 805D4F74  7F E3 FB 78 */	mr r3, r31
/* 805D4F78  38 80 00 00 */	li r4, 0
/* 805D4F7C  38 A0 00 05 */	li r5, 5
/* 805D4F80  38 C0 00 06 */	li r6, 6
/* 805D4F84  38 E0 00 04 */	li r7, 4
/* 805D4F88  4B FF E8 CD */	bl mDE_mode_tool_check
/* 805D4F8C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4F90  41 82 00 CC */	beq lbl_805D505C
/* 805D4F94  38 60 00 32 */	li r3, 0x32
/* 805D4F98  48 05 8D 6D */	bl sAdo_SysTrgStart
/* 805D4F9C  48 00 00 C0 */	b lbl_805D505C
lbl_805D4FA0:
/* 805D4FA0  28 00 00 03 */	cmplwi r0, 3
/* 805D4FA4  40 82 00 88 */	bne lbl_805D502C
/* 805D4FA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D4FAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D4FB0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D4FB4  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D4FB8  41 82 00 1C */	beq lbl_805D4FD4
/* 805D4FBC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4FC0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4FC4  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4FC8  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D4FCC  2C 00 00 00 */	cmpwi r0, 0
/* 805D4FD0  41 82 00 30 */	beq lbl_805D5000
lbl_805D4FD4:
/* 805D4FD4  7F E3 FB 78 */	mr r3, r31
/* 805D4FD8  38 80 00 00 */	li r4, 0
/* 805D4FDC  38 A0 00 05 */	li r5, 5
/* 805D4FE0  38 C0 00 05 */	li r6, 5
/* 805D4FE4  38 E0 00 01 */	li r7, 1
/* 805D4FE8  4B FF E8 6D */	bl mDE_mode_tool_check
/* 805D4FEC  2C 03 00 00 */	cmpwi r3, 0
/* 805D4FF0  41 82 00 6C */	beq lbl_805D505C
/* 805D4FF4  38 60 00 32 */	li r3, 0x32
/* 805D4FF8  48 05 8D 0D */	bl sAdo_SysTrgStart
/* 805D4FFC  48 00 00 60 */	b lbl_805D505C
lbl_805D5000:
/* 805D5000  7F E3 FB 78 */	mr r3, r31
/* 805D5004  38 80 00 00 */	li r4, 0
/* 805D5008  38 A0 00 04 */	li r5, 4
/* 805D500C  38 C0 00 05 */	li r6, 5
/* 805D5010  38 E0 00 01 */	li r7, 1
/* 805D5014  4B FF E8 41 */	bl mDE_mode_tool_check
/* 805D5018  2C 03 00 00 */	cmpwi r3, 0
/* 805D501C  41 82 00 40 */	beq lbl_805D505C
/* 805D5020  38 60 00 32 */	li r3, 0x32
/* 805D5024  48 05 8C E1 */	bl sAdo_SysTrgStart
/* 805D5028  48 00 00 34 */	b lbl_805D505C
lbl_805D502C:
/* 805D502C  28 00 00 04 */	cmplwi r0, 4
/* 805D5030  40 82 00 2C */	bne lbl_805D505C
/* 805D5034  7F E3 FB 78 */	mr r3, r31
/* 805D5038  38 80 00 00 */	li r4, 0
/* 805D503C  38 A0 00 01 */	li r5, 1
/* 805D5040  38 C0 00 05 */	li r6, 5
/* 805D5044  38 E0 00 01 */	li r7, 1
/* 805D5048  4B FF E8 0D */	bl mDE_mode_tool_check
/* 805D504C  2C 03 00 00 */	cmpwi r3, 0
/* 805D5050  41 82 00 0C */	beq lbl_805D505C
/* 805D5054  38 60 00 32 */	li r3, 0x32
/* 805D5058  48 05 8C AD */	bl sAdo_SysTrgStart
lbl_805D505C:
/* 805D505C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D5060  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D5064  4B DC 0E AD */	bl chkTrigger
/* 805D5068  2C 03 00 00 */	cmpwi r3, 0
/* 805D506C  41 82 00 E4 */	beq lbl_805D5150
/* 805D5070  38 60 00 33 */	li r3, 0x33
/* 805D5074  48 05 8C 91 */	bl sAdo_SysTrgStart
/* 805D5078  88 1F 06 9F */	lbz r0, 0x69f(r31)
/* 805D507C  2C 00 00 02 */	cmpwi r0, 2
/* 805D5080  41 82 00 70 */	beq lbl_805D50F0
/* 805D5084  40 80 00 14 */	bge lbl_805D5098
/* 805D5088  2C 00 00 00 */	cmpwi r0, 0
/* 805D508C  41 82 00 1C */	beq lbl_805D50A8
/* 805D5090  40 80 00 3C */	bge lbl_805D50CC
/* 805D5094  48 00 00 BC */	b lbl_805D5150
lbl_805D5098:
/* 805D5098  2C 00 00 04 */	cmpwi r0, 4
/* 805D509C  41 82 00 9C */	beq lbl_805D5138
/* 805D50A0  40 80 00 B0 */	bge lbl_805D5150
/* 805D50A4  48 00 00 70 */	b lbl_805D5114
lbl_805D50A8:
/* 805D50A8  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D50AC  7F E3 FB 78 */	mr r3, r31
/* 805D50B0  38 80 00 00 */	li r4, 0
/* 805D50B4  98 1F 06 A0 */	stb r0, 0x6a0(r31)
/* 805D50B8  4B FF EA AD */	bl mDE_main_mode_setup_action
/* 805D50BC  7F E3 FB 78 */	mr r3, r31
/* 805D50C0  38 80 00 00 */	li r4, 0
/* 805D50C4  48 00 00 A1 */	bl mDE_setup_action
/* 805D50C8  48 00 00 88 */	b lbl_805D5150
lbl_805D50CC:
/* 805D50CC  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D50D0  7F E3 FB 78 */	mr r3, r31
/* 805D50D4  38 80 00 01 */	li r4, 1
/* 805D50D8  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 805D50DC  4B FF EA 89 */	bl mDE_main_mode_setup_action
/* 805D50E0  7F E3 FB 78 */	mr r3, r31
/* 805D50E4  38 80 00 00 */	li r4, 0
/* 805D50E8  48 00 00 7D */	bl mDE_setup_action
/* 805D50EC  48 00 00 64 */	b lbl_805D5150
lbl_805D50F0:
/* 805D50F0  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D50F4  7F E3 FB 78 */	mr r3, r31
/* 805D50F8  38 80 00 02 */	li r4, 2
/* 805D50FC  98 1F 06 A2 */	stb r0, 0x6a2(r31)
/* 805D5100  4B FF EA 65 */	bl mDE_main_mode_setup_action
/* 805D5104  7F E3 FB 78 */	mr r3, r31
/* 805D5108  38 80 00 00 */	li r4, 0
/* 805D510C  48 00 00 59 */	bl mDE_setup_action
/* 805D5110  48 00 00 40 */	b lbl_805D5150
lbl_805D5114:
/* 805D5114  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D5118  7F E3 FB 78 */	mr r3, r31
/* 805D511C  38 80 00 03 */	li r4, 3
/* 805D5120  98 1F 06 A3 */	stb r0, 0x6a3(r31)
/* 805D5124  4B FF EA 41 */	bl mDE_main_mode_setup_action
/* 805D5128  7F E3 FB 78 */	mr r3, r31
/* 805D512C  38 80 00 00 */	li r4, 0
/* 805D5130  48 00 00 35 */	bl mDE_setup_action
/* 805D5134  48 00 00 1C */	b lbl_805D5150
lbl_805D5138:
/* 805D5138  7F E3 FB 78 */	mr r3, r31
/* 805D513C  38 80 00 04 */	li r4, 4
/* 805D5140  4B FF EA 25 */	bl mDE_main_mode_setup_action
/* 805D5144  7F E3 FB 78 */	mr r3, r31
/* 805D5148  38 80 00 00 */	li r4, 0
/* 805D514C  48 00 00 19 */	bl mDE_setup_action
lbl_805D5150:
/* 805D5150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D5154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D5158  7C 08 03 A6 */	mtlr r0
/* 805D515C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D5160  4E 80 00 20 */	blr 
