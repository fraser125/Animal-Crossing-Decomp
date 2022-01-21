.include "macros.inc"

.section .text

.org 0x800A8150

.global InitMetroTRK
InitMetroTRK:
/* 800A8150 000A50B0  38 21 FF FC */	addi r1, r1, -4
/* 800A8154 000A50B4  90 61 00 00 */	stw r3, 0(r1)
/* 800A8158 000A50B8  3C 60 80 20 */	lis r3, gTRKCPUState@h
/* 800A815C 000A50BC  60 63 B0 78 */	ori r3, r3, gTRKCPUState@l
/* 800A8160 000A50C0  BC 03 00 00 */	stmw r0, 0(r3)
/* 800A8164 000A50C4  80 81 00 00 */	lwz r4, 0(r1)
/* 800A8168 000A50C8  38 21 00 04 */	addi r1, r1, 4
/* 800A816C 000A50CC  90 23 00 04 */	stw r1, 4(r3)
/* 800A8170 000A50D0  90 83 00 0C */	stw r4, 0xc(r3)
/* 800A8174 000A50D4  7C 88 02 A6 */	mflr r4
/* 800A8178 000A50D8  90 83 00 84 */	stw r4, 0x84(r3)
/* 800A817C 000A50DC  90 83 00 80 */	stw r4, 0x80(r3)
/* 800A8180 000A50E0  7C 80 00 26 */	mfcr r4
/* 800A8184 000A50E4  90 83 00 88 */	stw r4, 0x88(r3)
/* 800A8188 000A50E8  7C 80 00 A6 */	mfmsr r4
/* 800A818C 000A50EC  60 83 80 00 */	ori r3, r4, 0x8000
/* 800A8190 000A50F0  68 63 80 00 */	xori r3, r3, 0x8000
/* 800A8194 000A50F4  7C 60 01 24 */	mtmsr r3
/* 800A8198 000A50F8  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 800A819C 000A50FC  48 00 00 F5 */	bl TRKSaveExtended1Block
/* 800A81A0 000A5100  3C 60 80 20 */	lis r3, gTRKCPUState@h
/* 800A81A4 000A5104  60 63 B0 78 */	ori r3, r3, gTRKCPUState@l
/* 800A81A8 000A5108  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800A81AC 000A510C  38 00 00 00 */	li r0, 0
/* 800A81B0 000A5110  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 800A81B4 000A5114  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 800A81B8 000A5118  3C 20 80 21 */	lis r1, 0x8021C710@h
/* 800A81BC 000A511C  60 21 C7 10 */	ori r1, r1, 0x8021C710@l
/* 800A81C0 000A5120  7C A3 2B 78 */	mr r3, r5
/* 800A81C4 000A5124  48 00 07 FD */	bl InitMetroTRKCommTable
/* 800A81C8 000A5128  2C 03 00 01 */	cmpwi r3, 1
/* 800A81CC 000A512C  40 82 00 14 */	bne lbl_800A81E0
/* 800A81D0 000A5130  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800A81D4 000A5134  7C 88 03 A6 */	mtlr r4
/* 800A81D8 000A5138  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800A81DC 000A513C  4E 80 00 20 */	blr 
lbl_800A81E0:
/* 800A81E0 000A5140  48 00 04 28 */	b TRK_main

.global TRKInitializeTarget
TRKInitializeTarget:
/* 800A81E4 000A5144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A81E8 000A5148  7C 08 02 A6 */	mflr r0
/* 800A81EC 000A514C  3C 60 80 21 */	lis r3, gTRKState@ha
/* 800A81F0 000A5150  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A81F4 000A5154  38 00 00 01 */	li r0, 1
/* 800A81F8 000A5158  38 63 AF D4 */	addi r3, r3, gTRKState@l
/* 800A81FC 000A515C  90 03 00 98 */	stw r0, 0x98(r3)
/* 800A8200 000A5160  4B FF E6 95 */	bl __TRK_get_MSR
/* 800A8204 000A5164  3C A0 80 21 */	lis r5, gTRKState@ha
/* 800A8208 000A5168  3C 80 80 21 */	lis r4, lc_base@ha
/* 800A820C 000A516C  38 A5 AF D4 */	addi r5, r5, gTRKState@l
/* 800A8210 000A5170  3C 00 E0 00 */	lis r0, 0xe000
/* 800A8214 000A5174  90 65 00 8C */	stw r3, 0x8c(r5)
/* 800A8218 000A5178  38 60 00 00 */	li r3, 0
/* 800A821C 000A517C  90 04 B5 50 */	stw r0, lc_base@l(r4)
/* 800A8220 000A5180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A8224 000A5184  7C 08 03 A6 */	mtlr r0
/* 800A8228 000A5188  38 21 00 10 */	addi r1, r1, 0x10
/* 800A822C 000A518C  4E 80 00 20 */	blr 

.global TRKTargetTranslate
TRKTargetTranslate:
/* 800A8230 000A5190  3C 80 80 21 */	lis r4, lc_base@ha
/* 800A8234 000A5194  38 84 B5 50 */	addi r4, r4, lc_base@l
/* 800A8238 000A5198  80 84 00 00 */	lwz r4, 0(r4)
/* 800A823C 000A519C  7C 03 20 40 */	cmplw r3, r4
/* 800A8240 000A51A0  41 80 00 24 */	blt lbl_800A8264
/* 800A8244 000A51A4  38 04 40 00 */	addi r0, r4, 0x4000
/* 800A8248 000A51A8  7C 03 00 40 */	cmplw r3, r0
/* 800A824C 000A51AC  40 80 00 18 */	bge lbl_800A8264
/* 800A8250 000A51B0  3C 80 80 21 */	lis r4, gTRKCPUState@ha
/* 800A8254 000A51B4  38 84 B0 78 */	addi r4, r4, gTRKCPUState@l
/* 800A8258 000A51B8  80 04 02 38 */	lwz r0, 0x238(r4)
/* 800A825C 000A51BC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800A8260 000A51C0  4C 82 00 20 */	bnelr 
lbl_800A8264:
/* 800A8264 000A51C4  54 60 00 BE */	clrlwi r0, r3, 2
/* 800A8268 000A51C8  64 03 80 00 */	oris r3, r0, 0x8000
/* 800A826C 000A51CC  4E 80 00 20 */	blr 

.global EnableMetroTRKInterrupts
EnableMetroTRKInterrupts:
/* 800A8270 000A51D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A8274 000A51D4  7C 08 02 A6 */	mflr r0
/* 800A8278 000A51D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A827C 000A51DC  48 00 06 D9 */	bl EnableEXI2Interrupts
/* 800A8280 000A51E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A8284 000A51E4  7C 08 03 A6 */	mtlr r0
/* 800A8288 000A51E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A828C 000A51EC  4E 80 00 20 */	blr 