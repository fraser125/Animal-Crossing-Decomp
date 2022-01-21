.include "macros.inc"

.section .text

.org 0x80018BC0

.global DspSyncCountClear
DspSyncCountClear:
/* 80018BC0 00015B20  90 6D 88 C4 */	stw r3, intcount-_SDA_BASE_(r13)
/* 80018BC4 00015B24  4E 80 00 20 */	blr 
/* 80018BC8 00015B28  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BCC 00015B2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BD0 00015B30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BD4 00015B34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BD8 00015B38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BDC 00015B3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DspSyncCountCheck
DspSyncCountCheck:
/* 80018BE0 00015B40  80 6D 88 C4 */	lwz r3, intcount-_SDA_BASE_(r13)
/* 80018BE4 00015B44  4E 80 00 20 */	blr 
/* 80018BE8 00015B48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BEC 00015B4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BF0 00015B50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BF4 00015B54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BF8 00015B58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018BFC 00015B5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DspSync__Fv
DspSync__Fv:
/* 80018C00 00015B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018C04 00015B64  7C 08 02 A6 */	mflr r0
/* 80018C08 00015B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018C0C 00015B6C  80 0D 88 C0 */	lwz r0, audioproc_mq_init-_SDA_BASE_(r13)
/* 80018C10 00015B70  28 00 00 00 */	cmplwi r0, 0
/* 80018C14 00015B74  41 82 00 1C */	beq lbl_80018C30
/* 80018C18 00015B78  3C 60 80 18 */	lis r3, audioproc_mq@ha
/* 80018C1C 00015B7C  38 80 00 01 */	li r4, 1
/* 80018C20 00015B80  38 63 FF C0 */	addi r3, r3, audioproc_mq@l
/* 80018C24 00015B84  38 A0 00 00 */	li r5, 0
/* 80018C28 00015B88  48 06 30 59 */	bl OSSendMessage
/* 80018C2C 00015B8C  48 00 00 08 */	b lbl_80018C34
lbl_80018C30:
/* 80018C30 00015B90  48 01 41 91 */	bl DSPReleaseHalt__Fv
lbl_80018C34:
/* 80018C34 00015B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018C38 00015B98  7C 08 03 A6 */	mtlr r0
/* 80018C3C 00015B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80018C40 00015BA0  4E 80 00 20 */	blr 
/* 80018C44 00015BA4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018C48 00015BA8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018C4C 00015BAC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018C50 00015BB0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018C54 00015BB4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018C58 00015BB8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018C5C 00015BBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global AudioSync__Fv
AudioSync__Fv:
/* 80018C60 00015BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018C64 00015BC4  7C 08 02 A6 */	mflr r0
/* 80018C68 00015BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018C6C 00015BCC  88 0D 88 CC */	lbz r0, lbl_8021844C-_SDA_BASE_(r13)
/* 80018C70 00015BD0  7C 00 07 75 */	extsb. r0, r0
/* 80018C74 00015BD4  40 82 00 10 */	bne lbl_80018C84
/* 80018C78 00015BD8  38 00 00 01 */	li r0, 1
/* 80018C7C 00015BDC  90 0D 88 C8 */	stw r0, first$150-_SDA_BASE_(r13)
/* 80018C80 00015BE0  98 0D 88 CC */	stb r0, lbl_8021844C-_SDA_BASE_(r13)
lbl_80018C84:
/* 80018C84 00015BE4  80 0D 88 C8 */	lwz r0, first$150-_SDA_BASE_(r13)
/* 80018C88 00015BE8  2C 00 00 00 */	cmpwi r0, 0
/* 80018C8C 00015BEC  40 82 00 0C */	bne lbl_80018C98
/* 80018C90 00015BF0  38 60 00 04 */	li r3, 4
/* 80018C94 00015BF4  4B FE F7 69 */	bl Probe_Finish
lbl_80018C98:
/* 80018C98 00015BF8  38 00 00 00 */	li r0, 0
/* 80018C9C 00015BFC  3C 60 80 0B */	lis r3, @160@ha
/* 80018CA0 00015C00  90 0D 88 C8 */	stw r0, first$150-_SDA_BASE_(r13)
/* 80018CA4 00015C04  38 83 A5 28 */	addi r4, r3, @160@l
/* 80018CA8 00015C08  38 60 00 04 */	li r3, 4
/* 80018CAC 00015C0C  4B FE F7 4D */	bl Probe_Start
/* 80018CB0 00015C10  80 0D 88 C0 */	lwz r0, audioproc_mq_init-_SDA_BASE_(r13)
/* 80018CB4 00015C14  28 00 00 00 */	cmplwi r0, 0
/* 80018CB8 00015C18  41 82 00 18 */	beq lbl_80018CD0
/* 80018CBC 00015C1C  3C 60 80 18 */	lis r3, audioproc_mq@ha
/* 80018CC0 00015C20  38 80 00 00 */	li r4, 0
/* 80018CC4 00015C24  38 63 FF C0 */	addi r3, r3, audioproc_mq@l
/* 80018CC8 00015C28  38 A0 00 00 */	li r5, 0
/* 80018CCC 00015C2C  48 06 2F B5 */	bl OSSendMessage
lbl_80018CD0:
/* 80018CD0 00015C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018CD4 00015C34  7C 08 03 A6 */	mtlr r0
/* 80018CD8 00015C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80018CDC 00015C3C  4E 80 00 20 */	blr 

.global NeosSync__Fv
NeosSync__Fv:
/* 80018CE0 00015C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018CE4 00015C44  7C 08 02 A6 */	mflr r0
/* 80018CE8 00015C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018CEC 00015C4C  80 0D 88 C0 */	lwz r0, audioproc_mq_init-_SDA_BASE_(r13)
/* 80018CF0 00015C50  28 00 00 00 */	cmplwi r0, 0
/* 80018CF4 00015C54  41 82 00 18 */	beq lbl_80018D0C
/* 80018CF8 00015C58  3C 60 80 18 */	lis r3, audioproc_mq@ha
/* 80018CFC 00015C5C  38 80 00 02 */	li r4, 2
/* 80018D00 00015C60  38 63 FF C0 */	addi r3, r3, audioproc_mq@l
/* 80018D04 00015C64  38 A0 00 01 */	li r5, 1
/* 80018D08 00015C68  48 06 2F 79 */	bl OSSendMessage
lbl_80018D0C:
/* 80018D0C 00015C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018D10 00015C70  7C 08 03 A6 */	mtlr r0
/* 80018D14 00015C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80018D18 00015C78  4E 80 00 20 */	blr 
/* 80018D1C 00015C7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __DspSync__FsP9OSContext
__DspSync__FsP9OSContext:
/* 80018D20 00015C80  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80018D24 00015C84  7C 08 02 A6 */	mflr r0
/* 80018D28 00015C88  3C C0 CC 00 */	lis r6, 0xCC00500A@ha
/* 80018D2C 00015C8C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 80018D30 00015C90  38 00 FF D7 */	li r0, -41
/* 80018D34 00015C94  38 61 00 08 */	addi r3, r1, 8
/* 80018D38 00015C98  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80018D3C 00015C9C  7C 9F 23 78 */	mr r31, r4
/* 80018D40 00015CA0  A0 A6 50 0A */	lhz r5, 0xCC00500A@l(r6)
/* 80018D44 00015CA4  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 80018D48 00015CA8  7C 80 00 38 */	and r0, r4, r0
/* 80018D4C 00015CAC  60 00 00 80 */	ori r0, r0, 0x80
/* 80018D50 00015CB0  B0 06 50 0A */	sth r0, 0x500a(r6)
/* 80018D54 00015CB4  48 06 16 DD */	bl OSClearContext
/* 80018D58 00015CB8  38 61 00 08 */	addi r3, r1, 8
/* 80018D5C 00015CBC  48 06 15 0D */	bl OSSetCurrentContext
/* 80018D60 00015CC0  4B FF FE A1 */	bl DspSync__Fv
/* 80018D64 00015CC4  38 61 00 08 */	addi r3, r1, 8
/* 80018D68 00015CC8  48 06 16 C9 */	bl OSClearContext
/* 80018D6C 00015CCC  7F E3 FB 78 */	mr r3, r31
/* 80018D70 00015CD0  48 06 14 F9 */	bl OSSetCurrentContext
/* 80018D74 00015CD4  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80018D78 00015CD8  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80018D7C 00015CDC  7C 08 03 A6 */	mtlr r0
/* 80018D80 00015CE0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80018D84 00015CE4  4E 80 00 20 */	blr 
/* 80018D88 00015CE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018D8C 00015CEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018D90 00015CF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018D94 00015CF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018D98 00015CF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018D9C 00015CFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __DspReg__Fv
__DspReg__Fv:
/* 80018DA0 00015D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018DA4 00015D04  7C 08 02 A6 */	mflr r0
/* 80018DA8 00015D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018DAC 00015D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018DB0 00015D10  48 06 1E 75 */	bl OSDisableInterrupts
/* 80018DB4 00015D14  7C 60 1B 78 */	mr r0, r3
/* 80018DB8 00015D18  3C 80 80 02 */	lis r4, __DspSync__FsP9OSContext@ha
/* 80018DBC 00015D1C  38 84 8D 20 */	addi r4, r4, __DspSync__FsP9OSContext@l
/* 80018DC0 00015D20  38 60 00 07 */	li r3, 7
/* 80018DC4 00015D24  7C 1F 03 78 */	mr r31, r0
/* 80018DC8 00015D28  48 06 1E A9 */	bl __OSSetInterruptHandler
/* 80018DCC 00015D2C  7F E3 FB 78 */	mr r3, r31
/* 80018DD0 00015D30  48 06 1E 7D */	bl OSRestoreInterrupts
/* 80018DD4 00015D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018DD8 00015D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018DDC 00015D3C  7C 08 03 A6 */	mtlr r0
/* 80018DE0 00015D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80018DE4 00015D44  4E 80 00 20 */	blr 
/* 80018DE8 00015D48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018DEC 00015D4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018DF0 00015D50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018DF4 00015D54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018DF8 00015D58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018DFC 00015D5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global audioproc__FPv
audioproc__FPv:
/* 80018E00 00015D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80018E04 00015D64  7C 08 02 A6 */	mflr r0
/* 80018E08 00015D68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80018E0C 00015D6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80018E10 00015D70  48 00 01 31 */	bl OSInitFastCast
/* 80018E14 00015D74  3C 60 80 18 */	lis r3, audioproc_mq@ha
/* 80018E18 00015D78  3C 80 80 18 */	lis r4, msgbuf@ha
/* 80018E1C 00015D7C  38 63 FF C0 */	addi r3, r3, audioproc_mq@l
/* 80018E20 00015D80  38 A0 00 10 */	li r5, 0x10
/* 80018E24 00015D84  38 84 FF E0 */	addi r4, r4, msgbuf@l
/* 80018E28 00015D88  48 06 2D F9 */	bl OSInitMessageQueue
/* 80018E2C 00015D8C  38 00 00 01 */	li r0, 1
/* 80018E30 00015D90  90 0D 88 C0 */	stw r0, audioproc_mq_init-_SDA_BASE_(r13)
/* 80018E34 00015D94  4B FF F1 4D */	bl Jac_Init
/* 80018E38 00015D98  48 01 93 69 */	bl Jac_InitSinTable__Fv
/* 80018E3C 00015D9C  48 00 0F 85 */	bl ResetPlayerCallback
/* 80018E40 00015DA0  38 60 00 00 */	li r3, 0
/* 80018E44 00015DA4  48 00 09 1D */	bl DspbufProcess__F13DSPBUF_EVENTS
/* 80018E48 00015DA8  38 60 00 00 */	li r3, 0
/* 80018E4C 00015DAC  48 00 0C 95 */	bl CpubufProcess__F13DSPBUF_EVENTS
/* 80018E50 00015DB0  48 01 3E 51 */	bl DspBoot__Fv
/* 80018E54 00015DB4  48 01 75 ED */	bl DSP_InitBuffer__Fv
/* 80018E58 00015DB8  4B FF FF 49 */	bl __DspReg__Fv
/* 80018E5C 00015DBC  80 6D 89 68 */	lwz r3, JAC_AI_SETTING-_SDA_BASE_(r13)
/* 80018E60 00015DC0  48 07 2C CD */	bl AISetDSPSampleRate
/* 80018E64 00015DC4  3C 60 80 02 */	lis r3, AudioSync__Fv@ha
/* 80018E68 00015DC8  38 63 8C 60 */	addi r3, r3, AudioSync__Fv@l
/* 80018E6C 00015DCC  48 07 2A BD */	bl AIRegisterDMACallback
/* 80018E70 00015DD0  48 07 2B 85 */	bl AIStartDMA
/* 80018E74 00015DD4  3C 60 80 18 */	lis r3, audioproc_mq@ha
/* 80018E78 00015DD8  3B E3 FF C0 */	addi r31, r3, audioproc_mq@l
/* 80018E7C 00015DDC  60 00 00 00 */	nop 
lbl_80018E80:
/* 80018E80 00015DE0  7F E3 FB 78 */	mr r3, r31
/* 80018E84 00015DE4  38 81 00 08 */	addi r4, r1, 8
/* 80018E88 00015DE8  38 A0 00 01 */	li r5, 1
/* 80018E8C 00015DEC  48 06 2E BD */	bl OSReceiveMessage
/* 80018E90 00015DF0  80 01 00 08 */	lwz r0, 8(r1)
/* 80018E94 00015DF4  2C 00 00 02 */	cmpwi r0, 2
/* 80018E98 00015DF8  41 82 00 7C */	beq lbl_80018F14
/* 80018E9C 00015DFC  40 80 00 14 */	bge lbl_80018EB0
/* 80018EA0 00015E00  2C 00 00 00 */	cmpwi r0, 0
/* 80018EA4 00015E04  41 82 00 18 */	beq lbl_80018EBC
/* 80018EA8 00015E08  40 80 00 1C */	bge lbl_80018EC4
/* 80018EAC 00015E0C  4B FF FF D4 */	b lbl_80018E80
lbl_80018EB0:
/* 80018EB0 00015E10  2C 00 00 04 */	cmpwi r0, 4
/* 80018EB4 00015E14  40 80 FF CC */	bge lbl_80018E80
/* 80018EB8 00015E18  48 00 00 64 */	b lbl_80018F1C
lbl_80018EBC:
/* 80018EBC 00015E1C  4B FF F6 C5 */	bl Jac_UpdateDAC
/* 80018EC0 00015E20  4B FF FF C0 */	b lbl_80018E80
lbl_80018EC4:
/* 80018EC4 00015E24  80 0D 88 C4 */	lwz r0, intcount-_SDA_BASE_(r13)
/* 80018EC8 00015E28  2C 00 00 00 */	cmpwi r0, 0
/* 80018ECC 00015E2C  41 82 00 5C */	beq lbl_80018F28
/* 80018ED0 00015E30  80 6D 88 C4 */	lwz r3, intcount-_SDA_BASE_(r13)
/* 80018ED4 00015E34  38 03 FF FF */	addi r0, r3, -1
/* 80018ED8 00015E38  90 0D 88 C4 */	stw r0, intcount-_SDA_BASE_(r13)
/* 80018EDC 00015E3C  80 0D 88 C4 */	lwz r0, intcount-_SDA_BASE_(r13)
/* 80018EE0 00015E40  2C 00 00 00 */	cmpwi r0, 0
/* 80018EE4 00015E44  40 82 00 14 */	bne lbl_80018EF8
/* 80018EE8 00015E48  38 60 00 07 */	li r3, 7
/* 80018EEC 00015E4C  4B FE F5 11 */	bl Probe_Finish
/* 80018EF0 00015E50  48 00 0B B1 */	bl DspFrameEnd__Fv
/* 80018EF4 00015E54  4B FF FF 8C */	b lbl_80018E80
lbl_80018EF8:
/* 80018EF8 00015E58  38 60 00 02 */	li r3, 2
/* 80018EFC 00015E5C  38 82 81 D8 */	addi r4, r2, @194-_SDA2_BASE_
/* 80018F00 00015E60  4B FE F4 F9 */	bl Probe_Start
/* 80018F04 00015E64  48 00 0A FD */	bl UpdateDSP__Fv
/* 80018F08 00015E68  38 60 00 02 */	li r3, 2
/* 80018F0C 00015E6C  4B FE F4 F1 */	bl Probe_Finish
/* 80018F10 00015E70  4B FF FF 70 */	b lbl_80018E80
lbl_80018F14:
/* 80018F14 00015E74  48 00 0E 6D */	bl CpuFrameEnd__Fv
/* 80018F18 00015E78  4B FF FF 68 */	b lbl_80018E80
lbl_80018F1C:
/* 80018F1C 00015E7C  38 60 00 00 */	li r3, 0
/* 80018F20 00015E80  48 06 54 BD */	bl OSExitThread
/* 80018F24 00015E84  4B FF FF 5C */	b lbl_80018E80
lbl_80018F28:
/* 80018F28 00015E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80018F2C 00015E8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80018F30 00015E90  7C 08 03 A6 */	mtlr r0
/* 80018F34 00015E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80018F38 00015E98  4E 80 00 20 */	blr 
/* 80018F3C 00015E9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global OSInitFastCast
OSInitFastCast:
/* 80018F40 00015EA0  38 60 00 04 */	li r3, 4
/* 80018F44 00015EA4  64 63 00 04 */	oris r3, r3, 4
/* 80018F48 00015EA8  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80018F4C 00015EAC  38 60 00 05 */	li r3, 5
/* 80018F50 00015EB0  64 63 00 05 */	oris r3, r3, 5
/* 80018F54 00015EB4  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80018F58 00015EB8  38 60 00 06 */	li r3, 6
/* 80018F5C 00015EBC  64 63 00 06 */	oris r3, r3, 6
/* 80018F60 00015EC0  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80018F64 00015EC4  38 60 00 07 */	li r3, 7
/* 80018F68 00015EC8  64 63 00 07 */	oris r3, r3, 7
/* 80018F6C 00015ECC  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80018F70 00015ED0  4E 80 00 20 */	blr 
/* 80018F74 00015ED4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018F78 00015ED8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018F7C 00015EDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global StartAudioThread
StartAudioThread:
/* 80018F80 00015EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80018F84 00015EE4  7C 08 02 A6 */	mflr r0
/* 80018F88 00015EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80018F8C 00015EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80018F90 00015EF0  48 08 1F 3D */	bl func_8009AECC
/* 80018F94 00015EF4  80 0D 88 D0 */	lwz r0, priority_set-_SDA_BASE_(r13)
/* 80018F98 00015EF8  3C E0 80 18 */	lis r7, audioStack@ha
/* 80018F9C 00015EFC  7C 7B 1B 78 */	mr r27, r3
/* 80018FA0 00015F00  7C 9C 23 78 */	mr r28, r4
/* 80018FA4 00015F04  2C 00 00 00 */	cmpwi r0, 0
/* 80018FA8 00015F08  7C BE 2B 78 */	mr r30, r5
/* 80018FAC 00015F0C  7C DD 33 78 */	mr r29, r6
/* 80018FB0 00015F10  3B E7 CF C0 */	addi r31, r7, audioStack@l
/* 80018FB4 00015F14  40 82 00 24 */	bne lbl_80018FD8
/* 80018FB8 00015F18  48 06 4D 25 */	bl OSGetCurrentThread
/* 80018FBC 00015F1C  48 06 5F 49 */	bl OSGetThreadPriority
/* 80018FC0 00015F20  38 83 FF FD */	addi r4, r3, -3
/* 80018FC4 00015F24  38 64 00 01 */	addi r3, r4, 1
/* 80018FC8 00015F28  90 8D 88 D4 */	stw r4, pri-_SDA_BASE_(r13)
/* 80018FCC 00015F2C  38 04 00 02 */	addi r0, r4, 2
/* 80018FD0 00015F30  90 6D 88 DC */	stw r3, pri3-_SDA_BASE_(r13)
/* 80018FD4 00015F34  90 0D 88 D8 */	stw r0, pri2-_SDA_BASE_(r13)
lbl_80018FD8:
/* 80018FD8 00015F38  7F 63 DB 78 */	mr r3, r27
/* 80018FDC 00015F3C  7F 84 E3 78 */	mr r4, r28
/* 80018FE0 00015F40  4B FF EE A1 */	bl Jac_HeapSetup
/* 80018FE4 00015F44  7F C3 F3 78 */	mr r3, r30
/* 80018FE8 00015F48  4B FF FA 79 */	bl Jac_SetAudioARAMSize__FUl
/* 80018FEC 00015F4C  57 BE 07 7A */	rlwinm r30, r29, 0, 0x1d, 0x1d
/* 80018FF0 00015F50  7F C3 F3 78 */	mr r3, r30
/* 80018FF4 00015F54  4B FF FA ED */	bl Jac_InitARAM__FUl
/* 80018FF8 00015F58  57 A0 07 BD */	rlwinm. r0, r29, 0, 0x1e, 0x1e
/* 80018FFC 00015F5C  41 82 00 3C */	beq lbl_80019038
/* 80019000 00015F60  3C 60 80 21 */	lis r3, jac_audioThread@ha
/* 80019004 00015F64  3C 80 80 02 */	lis r4, audioproc__FPv@ha
/* 80019008 00015F68  38 DF 00 00 */	addi r6, r31, 0
/* 8001900C 00015F6C  81 0D 88 D4 */	lwz r8, pri-_SDA_BASE_(r13)
/* 80019010 00015F70  38 63 D7 A0 */	addi r3, r3, jac_audioThread@l
/* 80019014 00015F74  38 84 8E 00 */	addi r4, r4, audioproc__FPv@l
/* 80019018 00015F78  38 A0 00 00 */	li r5, 0
/* 8001901C 00015F7C  38 E0 10 00 */	li r7, 0x1000
/* 80019020 00015F80  39 20 00 00 */	li r9, 0
/* 80019024 00015F84  38 C6 10 00 */	addi r6, r6, 0x1000
/* 80019028 00015F88  48 06 52 95 */	bl OSCreateThread
/* 8001902C 00015F8C  3C 60 80 21 */	lis r3, jac_audioThread@ha
/* 80019030 00015F90  38 63 D7 A0 */	addi r3, r3, jac_audioThread@l
/* 80019034 00015F94  48 06 58 29 */	bl OSResumeThread
lbl_80019038:
/* 80019038 00015F98  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 8001903C 00015F9C  41 82 00 40 */	beq lbl_8001907C
/* 80019040 00015FA0  48 00 13 41 */	bl jac_dvdproc_init__Fv
/* 80019044 00015FA4  3C 60 80 21 */	lis r3, jac_dvdThread@ha
/* 80019048 00015FA8  3C 80 80 02 */	lis r4, jac_dvdproc__FPv@ha
/* 8001904C 00015FAC  38 DF 20 00 */	addi r6, r31, 0x2000
/* 80019050 00015FB0  81 0D 88 DC */	lwz r8, pri3-_SDA_BASE_(r13)
/* 80019054 00015FB4  38 63 E3 E0 */	addi r3, r3, jac_dvdThread@l
/* 80019058 00015FB8  38 84 A3 C0 */	addi r4, r4, jac_dvdproc__FPv@l
/* 8001905C 00015FBC  38 A0 00 00 */	li r5, 0
/* 80019060 00015FC0  38 E0 10 00 */	li r7, 0x1000
/* 80019064 00015FC4  39 20 00 00 */	li r9, 0
/* 80019068 00015FC8  38 C6 10 00 */	addi r6, r6, 0x1000
/* 8001906C 00015FCC  48 06 52 51 */	bl OSCreateThread
/* 80019070 00015FD0  3C 60 80 21 */	lis r3, jac_dvdThread@ha
/* 80019074 00015FD4  38 63 E3 E0 */	addi r3, r3, jac_dvdThread@l
/* 80019078 00015FD8  48 06 57 E5 */	bl OSResumeThread
lbl_8001907C:
/* 8001907C 00015FDC  28 1E 00 00 */	cmplwi r30, 0
/* 80019080 00015FE0  41 82 00 3C */	beq lbl_800190BC
/* 80019084 00015FE4  3C 60 80 21 */	lis r3, jac_neosThread@ha
/* 80019088 00015FE8  3C 80 80 02 */	lis r4, neosproc__FPv@ha
/* 8001908C 00015FEC  38 DF 10 00 */	addi r6, r31, 0x1000
/* 80019090 00015FF0  81 0D 88 D8 */	lwz r8, pri2-_SDA_BASE_(r13)
/* 80019094 00015FF4  38 63 E0 D0 */	addi r3, r3, jac_neosThread@l
/* 80019098 00015FF8  38 84 91 A0 */	addi r4, r4, neosproc__FPv@l
/* 8001909C 00015FFC  38 A0 00 00 */	li r5, 0
/* 800190A0 00016000  38 E0 10 00 */	li r7, 0x1000
/* 800190A4 00016004  39 20 00 00 */	li r9, 0
/* 800190A8 00016008  38 C6 10 00 */	addi r6, r6, 0x1000
/* 800190AC 0001600C  48 06 52 11 */	bl OSCreateThread
/* 800190B0 00016010  3C 60 80 21 */	lis r3, jac_neosThread@ha
/* 800190B4 00016014  38 63 E0 D0 */	addi r3, r3, jac_neosThread@l
/* 800190B8 00016018  48 06 57 A5 */	bl OSResumeThread
lbl_800190BC:
/* 800190BC 0001601C  39 61 00 20 */	addi r11, r1, 0x20
/* 800190C0 00016020  48 08 1E 59 */	bl func_8009AF18
/* 800190C4 00016024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800190C8 00016028  7C 08 03 A6 */	mtlr r0
/* 800190CC 0001602C  38 21 00 20 */	addi r1, r1, 0x20
/* 800190D0 00016030  4E 80 00 20 */	blr 
/* 800190D4 00016034  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800190D8 00016038  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800190DC 0001603C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
